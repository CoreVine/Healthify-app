import 'package:dartz/dartz.dart';
import 'package:healthify_app/core/api/api_manager.dart';
import 'package:healthify_app/core/constants/app_urls.dart';
import 'package:healthify_app/features/auth/manager/data/data_sources/auth_ds.dart';
import 'package:healthify_app/features/auth/manager/data/models/login_response.dart';

import '../../../../../core/error/failures.dart';

class AuthDataSourceImpl implements AuthDataSource {
  ApiManager apiManager;

  AuthDataSourceImpl(this.apiManager);

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    final response = await apiManager.post(
        endPoint: AppUrls.login, data: loginRequest.toJson());
    return LoginResponse.fromJson(response.data);
  }
}
