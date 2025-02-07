import 'package:elevate_cycle2/core/di/api_manager/api_result.dart';
import 'package:elevate_cycle2/domain/entities/category_model.dart';

sealed class HomeState {}

class HomeInitState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {
  SuccessApiResult<List<CategoryEntity>> catList;
  HomeSuccessState(this.catList);
}

class HomeErrorState extends HomeState {
  ErrorApiResult exp;
  HomeErrorState(this.exp);
}
