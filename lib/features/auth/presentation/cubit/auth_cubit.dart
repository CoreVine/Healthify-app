import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:healthify_app/core/helpers/constants.dart';
import 'package:healthify_app/core/helpers/toast_extension.dart';
import 'package:healthify_app/features/auth/manager/data/models/login_response.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../../core/helpers/shared_prefs_keys.dart';
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

  void toggleRememberMe(bool rememberMe) {
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
        await SharedPrefHelper.setSecuredString(
            SharedPrefsKeys.userKey, userJsonString);
        user = response.user;
        print(response.user.email);
        emit(LoginSuccessState());
      });
    }
  }
}
