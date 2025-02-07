import 'package:elevate_cycle2/core/di/api_manager/api_result.dart';
import 'package:elevate_cycle2/data/datasource/datasource.dart';
import 'package:elevate_cycle2/domain/entities/category_model.dart';
import 'package:elevate_cycle2/domain/repo/home_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepo)
class HomeRepoImp implements HomeRepo {
  HomeDataSource homeDataSource;
  HomeRepoImp(this.homeDataSource);
  @override
  Future<ApiResult<List<CategoryEntity>>> getCategories() async {
    return await homeDataSource.getCategories();
  }
}
