import 'package:dartz/dartz.dart';
import 'package:healthify_app/features/auth/manager/data/models/register_response.dart';

import '../../../../../core/error/failures.dart';
import '../../data/models/login_response.dart';

abstract class AuthRepository {
Future<Either<Failures,LoginResponse>> login(LoginRequest loginRequest);
Future<Either<Failures,SignUpResponse>> createAccount(SignUpRequest signUpRequest);
}