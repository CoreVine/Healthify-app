import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';

import '../../../../core/theming/app_colors.dart';

class CheckFeatureItem extends StatelessWidget {
  const CheckFeatureItem({super.key, required this.feature});
  final String feature;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.check,
          color: AppColors.main,
        ),
        SizedBox(
          width: 16.w,
        ),
        Expanded(
            child: Text(
          feature,
          style: AppTextStyles.roboto16Medium(),
        ))
      ],
    );
  }
}
