import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthify_app/core/constants/app_assets.dart';
import 'package:healthify_app/core/theming/app_colors.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';
import 'package:healthify_app/generated/l10n.dart';

import 'custom_button.dart';

class DietItem extends StatelessWidget {
  const DietItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.stroke),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                child: Image.asset(
                  Assets.assetsImagesSc1,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 8.0,
                  children: [
                    Text(
                      "Diet Name",
                      style: AppTextStyles.poppins14Medium(),
                    ),
                    Text(
                      "Diet Description goes here. It can be a long text that describes the diet in detail.",
                      style: AppTextStyles.roboto12Regular()
                          .copyWith(color: AppColors.text2),
                    ),
                    CustomButton(
                      text: S.of(context).read_more,
                      onPressed: () {
                        // Handle button press
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
