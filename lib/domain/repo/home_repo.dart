import 'package:elevate_cycle2/core/di/api_manager/api_result.dart';
import 'package:elevate_cycle2/domain/entities/category_model.dart';

abstract class HomeRepo {
  Future<ApiResult<List<CategoryEntity>>> getCategories();
}
