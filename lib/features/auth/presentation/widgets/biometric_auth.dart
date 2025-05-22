import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';

class BiometricAuthDialogWidget extends StatelessWidget {
  const BiometricAuthDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      insetPadding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LottieBuilder.asset(
              "assets/lotties/biometricauth.json",
              width: 150.w,
              height: 150.w,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.h),
            Text(
              S.of(context).bioMetricAuthEnabled,
              style: AppTextStyles.roboto16Bold(),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12.h),
            Text(
              S.of(context).nextTimeYouLogin,
              style: AppTextStyles.roboto14Regular().copyWith(
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.h),
            CustomButton(
              width: 120.w,
              bgColor: AppColors.main,
              text: S.of(context).gotIt,
              textStyle: AppTextStyles.roboto14Bold().copyWith(
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
