import 'package:flutter/material.dart';
import 'package:healthify_app/core/helpers/extensions.dart';
import 'package:healthify_app/core/helpers/shared_pref_helper.dart';
import 'package:healthify_app/core/helpers/shared_prefs_keys.dart';
import 'package:healthify_app/core/routing/routes.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';
import 'package:healthify_app/generated/l10n.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S.of(context).onboarding,
            style: AppTextStyles.poppins14Medium(),
          ),
          ElevatedButton(
            onPressed: () {
              SharedPrefHelper.setData(SharedPrefsKeys.hasPassedIntroKey, true);
              context.pushNamed(Routes.loginScreen);
            },
            child: Text('skip onboarding'),
          ),
        ],
      ),
    ));
  }
}
