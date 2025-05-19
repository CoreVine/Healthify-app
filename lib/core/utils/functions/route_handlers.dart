import 'package:healthify_app/core/helpers/constants.dart';
import 'package:healthify_app/core/routing/routes.dart';

String routeHandler() {
  return hasPassedIntro
      ? hasTokenConstant
          ? Routes.homeScreen
          : Routes.loginScreen
      : Routes.onBoardingScreen;
}
