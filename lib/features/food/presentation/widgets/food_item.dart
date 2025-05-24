import 'package:flutter/material.dart';
import 'package:healthify_app/core/helpers/extensions.dart';
import 'package:healthify_app/core/routing/routes.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({
    super.key,
    required this.foodName,
    required this.foodImage,
  });
  final String foodName;
  final String foodImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.foodCategoryScreen, arguments: foodName);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          Expanded(
            child: Image.asset(
              foodImage,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            foodName,
            style: AppTextStyles.poppins18Medium(),
          )
        ],
      ),
    );
  }
}
