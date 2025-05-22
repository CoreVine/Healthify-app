import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:healthify_app/core/helpers/constants.dart';
import 'package:healthify_app/core/helpers/toast_extension.dart';
import 'package:healthify_app/features/auth/manager/data/models/login_response.dart';
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
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();
  GlobalKey<FormState> form = GlobalKey<FormState>();
  bool isBiometricAvailable = false;
  final LocalAuthentication bioAuth = LocalAuthentication();

  void toggleRememberMe() {
    rememberMe = !rememberMe;
    emit(ChangeRememberMeState(rememberMe: rememberMe));
  }

  Future<void> login(LoginRequest loginRequest) async {
    emit(LoginLoadingState());
    if (form.currentState!.validate()) {
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
}
