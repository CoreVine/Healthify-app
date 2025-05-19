import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthify_app/core/theming/app_colors.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onPressed,
  });
  final String imagePath;
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: 300.w,
            height: 300.h,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 60.h,
          ),
          Text(
            title,
            style: AppTextStyles.poppins24SemiBold(),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12),
          Text(
            description,
            style: AppTextStyles.poppins14Medium(),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50.h,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              backgroundColor: AppColors.main,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: AppTextStyles.poppins16SemiBold()
                  .copyWith(color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
