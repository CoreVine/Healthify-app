import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthify_app/core/constants/app_assets.dart';
import 'package:healthify_app/core/theming/app_colors.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';
import 'package:healthify_app/generated/l10n.dart';

class FoodCategoryItem extends StatelessWidget {
  const FoodCategoryItem({
    super.key,
  });

  TextStyle _infoTextStyle() {
    return AppTextStyles.poppins12Medium().copyWith(color: AppColors.text1);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.stroke),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //TODO food image
          Image.asset(
            Assets.assetsImagesFoodItem55,
            width: 86.w,
            height: 86.h,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                //TODO food name
                Text(
                  "Food name",
                  style: AppTextStyles.poppins16Medium()
                      .copyWith(color: AppColors.text1),
                ),
                //TODO food calories
                Text(
                  "${S.of(context).calories} ${0.0}",
                  style: _infoTextStyle(),
                ),
                //TODO food carbs
                Text(
                  "${S.of(context).carbs} ${0.0}",
                  style: _infoTextStyle(),
                ),
                //TODO food fiber
                Text(
                  "${S.of(context).fiber} ${0.0}",
                  style: _infoTextStyle(),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 16,
              children: [
                Text(
                  S.of(context).items_per_100g,
                  style: AppTextStyles.poppins12Regular()
                      .copyWith(color: AppColors.main),
                ),
                //TODO food protein
                Text(
                  "${S.of(context).protein} ${0.0}",
                  style: _infoTextStyle(),
                ),
                //TODO fats
                Text(
                  "${S.of(context).fats} ${0.0}",
                  style: _infoTextStyle(),
                ),
                //TODO vitamins
                Text(
                  "${S.of(context).vitamins} ... ",
                  style: _infoTextStyle(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
