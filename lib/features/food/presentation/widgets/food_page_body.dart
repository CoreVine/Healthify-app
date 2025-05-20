import 'package:flutter/material.dart';
import 'package:healthify_app/features/food/presentation/widgets/foods_list_view.dart';

class FoodPageBody extends StatelessWidget {
  const FoodPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // here we pass the list of the food categories
    return FoodsListView();
  }
}
