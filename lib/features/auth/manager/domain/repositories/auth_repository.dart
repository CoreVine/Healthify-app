import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../../data/models/login_response.dart';

abstract class AuthRepository {
Future<Either<Failures,LoginResponse>> login(LoginRequest loginRequest);
}