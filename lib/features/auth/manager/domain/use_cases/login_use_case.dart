import 'package:dartz/dartz.dart';
import 'package:healthify_app/features/auth/manager/data/models/login_response.dart';
import 'package:healthify_app/features/auth/manager/domain/repositories/auth_repository.dart';

import '../../../../../core/error/failures.dart';

class LoginUseCase {
  AuthRepository authRepository;


  LoginUseCase(this.authRepository);

  Future<Either<Failures, LoginResponse>> login(LoginRequest loginRequest){
   return authRepository.login(loginRequest);
  }
}