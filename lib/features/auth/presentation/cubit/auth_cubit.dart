import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:healthify_app/core/helpers/constants.dart';
import 'package:healthify_app/core/helpers/toast_extension.dart';
import 'package:healthify_app/features/auth/manager/data/models/login_response.dart';
import 'package:healthify_app/features/auth/manager/data/models/register_response.dart';
import 'package:healthify_app/features/auth/manager/domain/use_cases/create_account_use_case.dart';
import 'package:local_auth/local_auth.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../../core/helpers/shared_prefs_keys.dart';
import '../../manager/data/models/user.dart';
import '../../manager/domain/use_cases/login_use_case.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  bool rememberMe = false;
  LoginUseCase loginUseCase = getIt<LoginUseCase>();
  CreateAccountUseCase createAccountUseCase = getIt<CreateAccountUseCase>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool isTermsAccepted = false;
  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();
  GlobalKey<FormState> loginForm = GlobalKey<FormState>();
  GlobalKey<FormState> registerForm = GlobalKey<FormState>();
  bool isBiometricAvailable = false;
  final LocalAuthentication bioAuth = LocalAuthentication();
  bool isPasswordObscure = true;
  bool isConfirmPasswordObscure = true;
  GlobalKey<FormState> verifyCodeFormKey = GlobalKey<FormState>();
  List<String> code = List.filled(5, "");

  void toggleRememberMe() {
    rememberMe = !rememberMe;
    emit(ChangeRememberMeState(rememberMe: rememberMe));
  }

  void toggleTerms() {
    isTermsAccepted = !isTermsAccepted;
    emit(ChangeAcceptedTermsState(isTermsAccepted: isTermsAccepted));
  }

  void sendCode() {
    final fullCode = code.join();
    if (fullCode.length == 5) {
      emit(AuthCodeVerified());
      print(fullCode);
    } else {
      "Please enter a 5-digit code".showToast();
    }
  }
  Future<void> register(SignUpRequest signUpRequest) async {
    if (registerForm.currentState!.validate() && isTermsAccepted) {
      final response = await createAccountUseCase.createAccount(signUpRequest);
      response.fold(
        (l) {
          return l.error.showToast();
        },
        (r) {
          emit(RegisterSuccessState());
        },
      );
    }
  }

  Future<void> login(LoginRequest loginRequest) async {
    emit(LoginLoadingState());
    if (loginForm.currentState!.validate()) {
      final result = await loginUseCase.login(loginRequest);
      result.fold((l) {
        emit(LoginErrorState());
        print(l.error);
        return l.error.showToast();
      }, (response) async {
        await SharedPrefHelper.setSecuredString(
            SharedPrefsKeys.tokenKey, response.token);
        final userJsonString = jsonEncode(response.user.toJson());
        // save user object
        await SharedPrefHelper.setSecuredString(
            SharedPrefsKeys.userKey, userJsonString);
        if (rememberMe) {
          // save user biometric key
          await SharedPrefHelper.setSecuredString(
              SharedPrefsKeys.bioMetricTokenKey, response.token);
          // save user biometric User
          await SharedPrefHelper.setSecuredString(
              SharedPrefsKeys.bioMetricAuth, userJsonString);
        }
        user = response.user;
        print(response.user.email);
        emit(LoginSuccessState());
      });
    }
  }

  Future<void> checkBiometricAvailability() async {
    try {
      isBiometricAvailable = await bioAuth.canCheckBiometrics;
      emit(BiometricAvailabilityState(
          isBiometricAvailable: isBiometricAvailable));
    } catch (e) {
      isBiometricAvailable = false;
    }
  }

  Future<void> authenticateWithBiometrics() async {
    try {
      String? userToken = await SharedPrefHelper.getSecuredString(
          SharedPrefsKeys.bioMetricTokenKey);
      User userJson = await SharedPrefHelper.getBiometricUser();

      if (userToken == null || userJson == null) {
        emit(LoginErrorState());
        return;
      }

      bool authenticated = await bioAuth.authenticate(
        localizedReason: 'welcome back ${userJson.firstName}',
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          sensitiveTransaction: true,
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
      print('userToken: $userToken');
      print('userJson: $userJson');
      if (authenticated) {
        await SharedPrefHelper.setSecuredString(
            SharedPrefsKeys.bioMetricTokenKey, userToken);
        await SharedPrefHelper.setSecuredString(
          SharedPrefsKeys.userKey,
          jsonEncode(userJson.toJson()),
        );
        user = userJson;
        emit(LoginSuccessState());
      }
    } catch (e) {
      emit(LoginErrorState());
      print("Biometric authentication failed: $e");
    }
  }

  void changePasswordVisibility() {
    isPasswordObscure = !isPasswordObscure;
    emit(AuthPasswordVisibilityChanged(isPasswordObscure));
  }

  void changeConfirmPasswordVisibility() {
    isConfirmPasswordObscure = !isConfirmPasswordObscure;
    emit(AuthPasswordVisibilityChanged(isConfirmPasswordObscure,
        isConfirm: true));
  }
}
