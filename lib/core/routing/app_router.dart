import 'package:flutter/material.dart';
import 'package:healthify_app/core/routing/routes.dart';
import 'package:healthify_app/features/auth/presentation/pages/login_screen.dart';
import 'package:healthify_app/features/auth/presentation/pages/register_screen.dart';
import 'package:healthify_app/features/home/presentation/pages/home_screen.dart';
import 'package:healthify_app/features/notifications/presentation/pages/notification_screen.dart';
import 'package:healthify_app/features/onBoarding/presentation/pages/onboarding_screen.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.notificationScreen:
        return MaterialPageRoute(builder: (_) => const NotificationsScreen());

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
