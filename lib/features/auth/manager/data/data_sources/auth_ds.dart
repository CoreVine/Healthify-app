import 'package:dartz/dartz.dart';
import 'package:healthify_app/features/auth/manager/data/models/register_response.dart';

import '../../../../../core/error/failures.dart';
import '../models/login_response.dart';

abstract class AuthDataSource {
  Future<LoginResponse> login(LoginRequest loginRequest);
  Future<SignUpResponse> createAccount(SignUpRequest signUpRequest);
}