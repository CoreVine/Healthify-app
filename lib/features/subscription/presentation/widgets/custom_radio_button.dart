import 'package:flutter/material.dart';
import 'package:healthify_app/core/theming/app_colors.dart' show AppColors;

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({super.key, required this.isSelected});
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? AppColors.main : AppColors.transparent,
          border: Border.all(width: 1, color: AppColors.main),
        ),
        child: isSelected
            ? FittedBox(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.check,
                    color: AppColors.white,
                  ),
                ),
              )
            : SizedBox.shrink(),
      ),
    );
  }
}
