import 'package:flutter/material.dart';
import 'package:healthify_app/core/theming/app_colors.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';
import 'package:healthify_app/features/food/presentation/widgets/category_items_list_view.dart';
import 'package:healthify_app/generated/l10n.dart';

class FoodCategoryBody extends StatelessWidget {
  const FoodCategoryBody({
    super.key,
    required this.categoryName,
  });
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              "${S.of(context).a_concise_overview_of_the_importance_of} $categoryName ${S.of(context).in_a_balanced_diet}",
              textAlign: TextAlign.center,
              style: AppTextStyles.poppins14Regular().copyWith(
                color: AppColors.text2,
              ),
            ),
          ),
        ),
        CategoryItemsListView(),
      ],
    );
  }
}
