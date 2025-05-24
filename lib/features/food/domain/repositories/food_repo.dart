import 'package:dartz/dartz.dart';
import 'package:healthify_app/core/error/failures.dart';
import 'package:healthify_app/features/food/domain/entities/food_category_entity.dart';
import 'package:healthify_app/features/food/domain/entities/food_item_entity.dart';

abstract class FoodRepository {
  Future<Either<Failures, List<FoodCategoryEntity>>> getFoodCategories();
  Future<Either<Failures, List<FoodItemEntity>>> getCategoryFood(
    int categoryId,
  );
}
