import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthify_app/core/constants/app_assets.dart';

import 'food_item.dart';

class FoodsListView extends StatelessWidget {
  const FoodsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 35.w,
          mainAxisSpacing: 24.h,
          childAspectRatio: 1 / 1.3),
      itemCount: 20,
      itemBuilder: (context, index) {
        return FoodItem(
          foodName: 'Food Name $index',
          foodImage: Assets.assetsImagesFoodItem1,
        );
      },
    );
  }
}
