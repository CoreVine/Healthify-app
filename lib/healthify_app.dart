import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthify_app/core/routing/routes.dart';

import 'core/theming/app_colors.dart';
import 'core/routing/app_router.dart';
import 'core/di/dependency_injection.dart';
import 'core/utils/functions/route_handlers.dart';
import 'features/translation/cubit/localization_cubit.dart';
import 'generated/l10n.dart';

class HealthifyApp extends StatelessWidget {
  const HealthifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(440, 956),
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: [BlocProvider(create: (context) => getIt<LocaleCubit>())],
        child: BlocBuilder<LocaleCubit, Locale>(
          builder: (context, state) {
            return MaterialApp(
              locale: Locale(state.languageCode),
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              title: 'Tride app',
              theme: ThemeData(
                primaryColor: AppColors.main,
                colorScheme: ColorScheme.fromSeed(seedColor: AppColors.main),
                scaffoldBackgroundColor: Colors.white,
              ),
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.loginScreen,
              onGenerateRoute: AppRouter.generateRoute,
            );
          },
        ),
      ),
    );
  }
}
