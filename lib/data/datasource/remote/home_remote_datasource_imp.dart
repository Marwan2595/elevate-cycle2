import 'package:dio/dio.dart';
import 'package:elevate_cycle2/config/constants.dart';
import 'package:elevate_cycle2/core/di/api_manager/api_manager.dart';
import 'package:elevate_cycle2/core/di/api_manager/api_result.dart';
import 'package:elevate_cycle2/data/datasource/datasource.dart';
import 'package:elevate_cycle2/domain/entities/category_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeDataSource)
class HomeRemoteDatasourceImp implements HomeDataSource {
  ApiManager apiManager;
  HomeRemoteDatasourceImp(this.apiManager);
  @override
  Future<ApiResult<List<CategoryEntity>>> getCategories() async {
    try {
      var res = await apiManager.getData(endPoint: categoriesEndpoint);
      var resData = res.data["data"] ?? [];
      List<CategoryEntity> categories = resData
          .map<CategoryEntity>((json) => CategoryEntity.fromJson(json))
          .toList();
      return SuccessApiResult(categories);
    } on DioException catch (e) {
      return ErrorApiResult(e);
    }
  }
}
