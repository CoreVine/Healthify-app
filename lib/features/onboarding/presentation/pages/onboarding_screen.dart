import 'package:flutter/material.dart';
import 'package:healthify_app/core/constants/app_assets.dart';
import 'package:healthify_app/generated/l10n.dart';

import '../widgets/onboarding_screen_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> pages = [
      {
        'imagePath': Assets.onboarding1,
        'title': S.of(context).onboarding_title_1,
        'description': S.of(context).onboarding_subtitle_1,
      },
      {
        'imagePath': Assets.onboarding2,
        'title': S.of(context).onboarding_title_2,
        'description': S.of(context).onboarding_subtitle_2,
      },
      {
        'imagePath': Assets.onboarding3,
        'title': S.of(context).onboarding_title_3,
        'description': S.of(context).onboarding_subtitle_3,
      },
    ];
    return Scaffold(
      body: SafeArea(child: OnBoardingScreenBody(pages: pages)),
    );
  }
}
