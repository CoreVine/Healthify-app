import 'package:dartz/dartz.dart';
import 'package:healthify_app/core/error/failures.dart';
import 'package:healthify_app/features/food/domain/entities/food_item_entity.dart';
import 'package:healthify_app/features/food/domain/repositories/food_repo.dart';

class GetCategoryFoodUseCase {
  final FoodRepository _foodRepository;

  GetCategoryFoodUseCase(this._foodRepository);

  Future<Either<Failures, List<FoodItemEntity>>> call(int categoryId) async {
    return await _foodRepository.getCategoryFood(categoryId);
  }
}
