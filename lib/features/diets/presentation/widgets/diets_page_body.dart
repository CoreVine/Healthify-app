import 'package:flutter/material.dart';
import 'package:healthify_app/features/diets/presentation/widgets/diet_item.dart';

class DietsPageBody extends StatelessWidget {
  const DietsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return DietItem();
      },
    );
  }
}
