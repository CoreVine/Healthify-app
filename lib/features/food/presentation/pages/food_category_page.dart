import 'package:flutter/material.dart';
import 'package:healthify_app/core/helpers/measures.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';

import '../widgets/food_category_body.dart';

class FoodCategoryPage extends StatelessWidget {
  const FoodCategoryPage({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
        titleTextStyle: AppTextStyles.poppins20Medium(),
      ),
      body: Padding(
        padding: AppMeasures.symmetricPadding(horizontal: 16),
        child: FoodCategoryBody(categoryName: categoryName),
      ),
    );
  }
}
