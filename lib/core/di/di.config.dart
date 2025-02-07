// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/datasource/datasource.dart' as _i511;
import '../../data/datasource/remote/home_remote_datasource_imp.dart' as _i724;
import '../../data/repo/home_repo_imp.dart' as _i848;
import '../../domain/repo/home_repo.dart' as _i645;
import '../../domain/usecases/get_categories.dart' as _i515;
import '../../presentation/viewModels/cubits/home_cubit.dart' as _i918;
import 'api_manager/api_manager.dart' as _i674;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i674.ApiManager>(() => _i674.ApiManager());
    gh.factory<_i511.HomeDataSource>(
        () => _i724.HomeRemoteDatasourceImp(gh<_i674.ApiManager>()));
    gh.factory<_i645.HomeRepo>(
        () => _i848.HomeRepoImp(gh<_i511.HomeDataSource>()));
    gh.factory<_i515.GetCategoriesUseCase>(
        () => _i515.GetCategoriesUseCase(gh<_i645.HomeRepo>()));
    gh.factory<_i918.HomeViewModel>(
        () => _i918.HomeViewModel(gh<_i515.GetCategoriesUseCase>()));
    return this;
  }
}
