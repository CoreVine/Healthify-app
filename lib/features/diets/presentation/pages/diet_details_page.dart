import 'package:flutter/material.dart';
import 'package:healthify_app/core/helpers/measures.dart';
import 'package:healthify_app/features/diets/presentation/widgets/diet_details_page_body.dart';

class DietDetailsPage extends StatelessWidget {
  const DietDetailsPage({super.key, required this.dietName});
  final String dietName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dietName),
      ),
      body: Padding(
        padding: AppMeasures.symmetricPadding(horizontal: 16.0),
        child: DietDetailsPageBody(dietName: dietName),
      ),
    );
  }
}
