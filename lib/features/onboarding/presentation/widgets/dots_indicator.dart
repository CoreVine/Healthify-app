import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthify_app/core/theming/app_colors.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.currentPage,
    required this.numberOfPages,
  });

  final int numberOfPages;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        numberOfPages,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 10.h,
          width: 10.w,
          decoration: BoxDecoration(
            color: currentPage == index
                ? AppColors.main
                : AppColors.main.withOpacity(.20),
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
      ),
    );
  }
}
