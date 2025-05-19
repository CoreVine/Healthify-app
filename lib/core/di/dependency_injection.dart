import 'package:get_it/get_it.dart';
import 'package:healthify_app/core/api/api_manager.dart';
import 'package:healthify_app/core/api/dio_factory.dart';
import 'package:healthify_app/features/translation/cubit/localization_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio Client
  getIt.registerLazySingleton<ApiManager>(() => ApiManager(dio: DioFactory.getDio()));

  // Data Sources
  //   getIt.registerLazySingleton<RegisterRemoteDataSourceImpl>(
  //     () => RegisterRemoteDataSourceImpl(getIt<ApiManager>()),
  //   );

  // Repositories
  //   getIt.registerLazySingleton<RegisterRepositoryImpl>(
  //     () => RegisterRepositoryImpl(getIt<RegisterRemoteDataSourceImpl>()),
  //   );

  // Use Cases
  //   getIt.registerLazySingleton<SignupUseCaseImpl>(
  //     () => SignupUseCaseImpl(getIt<RegisterRepositoryImpl>()),
  //   );

  // Cubits
  getIt.registerFactory<LocaleCubit>(() => LocaleCubit());
}
