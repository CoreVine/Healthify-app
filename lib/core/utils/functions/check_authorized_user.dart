import 'package:flutter/material.dart';
import 'package:healthify_app/core/helpers/constants.dart';
import 'package:healthify_app/core/helpers/extensions.dart';
import 'package:healthify_app/core/helpers/shared_pref_helper.dart';
import 'package:healthify_app/core/helpers/shared_prefs_keys.dart';

Future<void> checkNavigation() async {
  String hasTokenResult = await SharedPrefHelper.getSecuredString(SharedPrefsKeys.tokenKey);
  debugPrint('hasTokenResult : $hasTokenResult');
  if (!hasTokenResult.isNullOrEmpty()) {
    hasTokenConstant = true;
  }

  bool passedIntroCheckResult = await SharedPrefHelper.getBool(SharedPrefsKeys.hasPassedIntroKey);
  debugPrint('passedIntroCheckResult : $passedIntroCheckResult');
  if (passedIntroCheckResult) {
    hasPassedIntro = true;
  }
}
