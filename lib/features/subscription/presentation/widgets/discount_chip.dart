import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthify_app/core/helpers/measures.dart';
import 'package:healthify_app/core/theming/app_colors.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';
import 'package:healthify_app/generated/l10n.dart';

class DiscountChip extends StatelessWidget {
  const DiscountChip({
    super.key,
    required this.discount,
  });

  final double discount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(AppMeasures.borderRadius8.r),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Text(
            S.of(context).save_discount(discount),
            style: AppTextStyles.roboto12Bold(),
          ),
        ),
      ),
    );
  }
}
