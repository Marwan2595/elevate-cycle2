import 'package:elevate_cycle2/core/di/api_manager/api_result.dart';
import 'package:elevate_cycle2/domain/entities/category_model.dart';
import 'package:elevate_cycle2/domain/usecases/get_categories.dart';
import 'package:elevate_cycle2/presentation/viewModels/states/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeViewModel extends Cubit<HomeState> {
  GetCategoriesUseCase getCategoriesUseCase;
  HomeViewModel(
    this.getCategoriesUseCase,
  ) : super(HomeInitState());
  Future<void> getCategories() async {
    emit(HomeLoadingState());
    var apiResult = await getCategoriesUseCase.call();
    switch (apiResult) {
      case SuccessApiResult():
        emit(
          HomeSuccessState(
            SuccessApiResult<List<CategoryEntity>>(apiResult.data),
          ),
        );
      case ErrorApiResult():
        emit(
          HomeErrorState(
            ErrorApiResult(apiResult.exception),
          ),
        );
    }
  }
}
