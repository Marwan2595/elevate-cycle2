import 'package:elevate_cycle2/core/di/api_manager/api_result.dart';
import 'package:elevate_cycle2/domain/entities/category_model.dart';
import 'package:elevate_cycle2/domain/repo/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoriesUseCase {
  HomeRepo homeRepo;
  GetCategoriesUseCase(this.homeRepo);
  Future<ApiResult<List<CategoryEntity>>> call() async {
    return await homeRepo.getCategories();
  }
}
