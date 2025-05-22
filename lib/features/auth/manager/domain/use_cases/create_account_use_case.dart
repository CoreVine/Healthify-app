import 'package:dartz/dartz.dart';
import 'package:healthify_app/core/error/failures.dart';
import 'package:healthify_app/features/auth/manager/data/models/register_response.dart';

import '../repositories/auth_repository.dart';

class CreateAccountUseCase {
  AuthRepository authRepository;

  CreateAccountUseCase(this.authRepository);

  Future<Either<Failures, SignUpResponse>> createAccount(
      SignUpRequest signUpRequest) {
    return authRepository.createAccount(signUpRequest);
  }
}
