import 'package:get_it/get_it.dart';
import 'package:healthify_app/core/api/api_manager.dart';
import 'package:healthify_app/core/api/dio_factory.dart';
import 'package:healthify_app/features/auth/manager/data/data_sources/auth_ds.dart';
import 'package:healthify_app/features/auth/manager/domain/repositories/auth_repository.dart';
import 'package:healthify_app/features/auth/manager/domain/use_cases/login_use_case.dart';
import 'package:healthify_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:healthify_app/features/translation/cubit/localization_cubit.dart';

import '../../features/auth/manager/data/data_sources/auth_ds_impl.dart';
import '../../features/auth/manager/data/repositories/auth_repo_impl.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio Client
  getIt.registerLazySingleton<ApiManager>(
      () => ApiManager(dio: DioFactory.getDio()));

  // Data Sources
  //   getIt.registerLazySingleton<RegisterRemoteDataSourceImpl>(
  //     () => RegisterRemoteDataSourceImpl(getIt<ApiManager>()),
  //   );

  getIt.registerLazySingleton<AuthDataSource>(
    () => AuthDataSourceImpl(getIt.get<ApiManager>()),
  );

  // Repositories
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(getIt.get<AuthDataSource>()),
  );

  // Use Cases
  getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(getIt.get<AuthRepository>()),
  );

  // Cubits
  getIt.registerFactory<LocaleCubit>(() => LocaleCubit());
  getIt.registerFactory<AuthCubit>(() => AuthCubit());
}
