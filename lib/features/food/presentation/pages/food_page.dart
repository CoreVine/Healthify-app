import 'package:flutter/material.dart';
import 'package:healthify_app/core/helpers/measures.dart';
import 'package:healthify_app/features/food/presentation/widgets/food_page_body.dart';

import '../widgets/food_page_app_bar.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: foodPageAppBar(context),
      body: Padding(
        padding: AppMeasures.onlyPadding(left: 16.0, right: 16.0, top: 24.0),
        child: FoodPageBody(),
      ),
    );
  }
}
