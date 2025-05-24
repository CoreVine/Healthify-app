import 'package:dartz/dartz.dart';
import 'package:healthify_app/core/error/failures.dart';
import 'package:healthify_app/features/food/domain/entities/food_category_entity.dart';
import 'package:healthify_app/features/food/domain/repositories/food_repo.dart';

class GetFoodCategoryUseCase {
  final FoodRepository _foodRepository;

  GetFoodCategoryUseCase(this._foodRepository);

  Future<Either<Failures, List<FoodCategoryEntity>>> call() async {
    return await _foodRepository.getFoodCategories();
  }
}
