import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:healthify_app/core/error/failures.dart';
import 'package:healthify_app/features/auth/manager/data/data_sources/auth_ds.dart';
import 'package:healthify_app/features/auth/manager/data/models/login_response.dart';
import 'package:healthify_app/features/auth/manager/data/models/register_response.dart';

import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthDataSource authDataSource;

  AuthRepositoryImpl(this.authDataSource);

  @override
  Future<Either<Failures, LoginResponse>> login(
      LoginRequest loginRequest) async {
    try {
      final response = await authDataSource.login(loginRequest);
      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(error: 'Unexpected error occurred'));
    }
  }
@override
  Future<Either<Failures, SignUpResponse>> createAccount(
      SignUpRequest signUpRequest) async {
    try {
      final response = await authDataSource.createAccount(signUpRequest);
      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(error: 'Unexpected error occurred'));
    }
  }
}
