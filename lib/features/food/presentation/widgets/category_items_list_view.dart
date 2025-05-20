import 'package:flutter/material.dart';
import 'package:healthify_app/features/food/presentation/widgets/food_category_item.dart';

class CategoryItemsListView extends StatelessWidget {
  const CategoryItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: FoodCategoryItem(),
        );
      },
    );
  }
}
