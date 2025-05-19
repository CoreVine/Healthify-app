import 'package:flutter/material.dart';
import 'package:healthify_app/generated/l10n.dart';
import 'package:healthify_app/features/subscription/presentation/widgets/check_features_item.dart';

class CheckFeaturesList extends StatelessWidget {
  const CheckFeaturesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        CheckFeatureItem(
          feature: S.of(context).personalized_diet_plan,
        ),
        CheckFeatureItem(
          feature: S.of(context).daily_workout_plans,
        ),
        CheckFeatureItem(
          feature: S.of(context).daily_followup_support,
        ),
      ],
    );
  }
}
