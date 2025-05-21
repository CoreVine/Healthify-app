import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthify_app/core/constants/app_assets.dart';
import 'package:healthify_app/core/theming/app_colors.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';
import 'package:healthify_app/features/diets/presentation/widgets/labeled_text.dart';
import 'package:healthify_app/generated/l10n.dart';

class DietDetailsPageBody extends StatelessWidget {
  const DietDetailsPageBody({
    super.key,
    required this.dietName,
  });

  final String dietName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 16.0,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Image.asset(
            Assets.assetsImagesSc1,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 260.h,
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              dietName,
              style: AppTextStyles.poppins18Medium(),
            ),
            Text(
              "19 hours ago",
              style: AppTextStyles.roboto14Regular()
                  .copyWith(color: AppColors.main),
            ),
          ],
        ),
        LabeledText(
          label: S.of(context).description,
          value:
              "This is a detailed description of the diet. It includes all the necessary information about the diet plan, its benefits, and how to follow it.",
        ),
        LabeledText(
          label: S.of(context).calories,
          value: "1500-2000 kcal.",
        ),
        LabeledText(
          label: S.of(context).workout,
          value: "Strength training, Cardio.",
        ),
      ],
    );
  }
}
