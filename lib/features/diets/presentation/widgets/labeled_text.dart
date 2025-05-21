import 'package:flutter/material.dart';
import 'package:healthify_app/core/theming/app_colors.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';

class LabeledText extends StatelessWidget {
  const LabeledText({
    super.key,
    required this.label,
    required this.value,
  });
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: label,
            style: AppTextStyles.roboto16Medium(),
          ),
          TextSpan(
            text: value,
            style: AppTextStyles.roboto14Regular().copyWith(
              color: AppColors.text2,
            ),
          ),
        ],
      ),
    );
  }
}
