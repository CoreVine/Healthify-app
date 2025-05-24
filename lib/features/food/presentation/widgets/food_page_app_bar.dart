import 'package:flutter/material.dart';
import 'package:healthify_app/core/theming/app_colors.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';
import 'package:healthify_app/generated/l10n.dart';

AppBar foodPageAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    title: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        Text.rich(
          TextSpan(
            children: [
              if (Localizations.localeOf(context).languageCode == 'ar') ...[
                TextSpan(
                  text: S.of(context).categories,
                  style: AppTextStyles.poppins20Medium()
                      .copyWith(color: AppColors.main),
                ),
                TextSpan(
                  text: " ${S.of(context).food}",
                  style: AppTextStyles.poppins20Medium()
                      .copyWith(color: AppColors.black),
                ),
              ] else ...[
                TextSpan(
                  text: S.of(context).food,
                  style: AppTextStyles.poppins20Medium()
                      .copyWith(color: AppColors.black),
                ),
                TextSpan(
                  text: " ${S.of(context).categories}",
                  style: AppTextStyles.poppins20Medium()
                      .copyWith(color: AppColors.main),
                ),
              ]
            ],
          ),
        ),
        Text(
          S.of(context).all_this_for_you,
          textAlign: TextAlign.center,
          style:
              AppTextStyles.poppins16Regular().copyWith(color: AppColors.text2),
        )
      ],
    ),
  );
}
