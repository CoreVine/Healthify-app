import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthify_app/core/routing/routes.dart';
import 'package:healthify_app/features/auth/presentation/pages/login_screen.dart';
import 'package:healthify_app/features/auth/presentation/pages/register_screen.dart';
import 'package:healthify_app/features/auth/presentation/pages/verify_code_screen.dart';
import 'package:healthify_app/features/home/presentation/pages/home_screen.dart';
import 'package:healthify_app/features/onBoarding/presentation/pages/onboarding_screen.dart';

import '../../features/auth/presentation/cubit/auth_cubit.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<AuthCubit>(),
                  child: LoginScreen(),
                ));
      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<AuthCubit>(),
                  child: RegisterScreen(),
                ));
      case Routes.verifyCode:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: VerifyCodeScreen(),
          ),
        );
      case Routes.dietDataScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: VerifyCodeScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      // case Routes.loginScreen:
      //   return MaterialPageRoute(builder: (_) => const LoginScreen());
      // case Routes.signUpScreen:
      //   return MaterialPageRoute(builder: (_) => const SignupScreen());

      // case Routes.homeScreen:
      //   return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
    return null;
  }
}
