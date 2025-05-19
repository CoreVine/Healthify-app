import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthify_app/core/helpers/measures.dart';
import 'package:healthify_app/core/theming/app_colors.dart';
import 'package:healthify_app/core/theming/app_paddings.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';
import 'package:healthify_app/features/subscription/presentation/widgets/custom_radio_button.dart';
import 'package:healthify_app/features/subscription/presentation/widgets/discount_chip.dart';
import 'package:healthify_app/generated/l10n.dart';

class MonthlySubscriptionCard extends StatelessWidget {
  const MonthlySubscriptionCard(
      {super.key,
      required this.title,
      required this.price,
      required this.onTap,
      this.isSelected = false,
      this.discount = 0.0});
  final String title;
  final double price;
  final VoidCallback onTap;
  final bool isSelected;
  final double discount;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(AppPaddings.gap16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppMeasures.borderRadius8.r),
          border: Border.all(
            color: isSelected ? AppColors.main : AppColors.stroke,
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: AppTextStyles.roboto16Medium(),
                  ),
                ),
                CustomRadioButton(isSelected: isSelected)
              ],
            ),
            SizedBox(height: AppPaddings.gap8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    discount == 0.0
                        ? S.of(context).monthly_price(price)
                        : S.of(context).monthly_price_with_discount(
                              (price * (1 - discount / 100)).toStringAsFixed(2),
                              price.toStringAsFixed(2),
                            ),
                    style: AppTextStyles.roboto18Bold(),
                  ),
                ),
              ],
            ),
            discount != 0.0
                ? DiscountChip(discount: discount)
                : SizedBox.shrink(),
            discount == 0.0 ? SizedBox(height: AppPaddings.gap48.h) : SizedBox(height: AppPaddings.gap24.h),
            Text(
              S.of(context).billed_monthly,
              style: AppTextStyles.roboto18Regular(),
            ),
          ],
        ),
      ),
    );
  }
}
