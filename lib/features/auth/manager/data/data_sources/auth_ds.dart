import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../models/login_response.dart';

abstract class AuthDataSource {
  Future<LoginResponse> login(LoginRequest loginRequest);
}