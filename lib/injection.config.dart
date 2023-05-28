// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_template/data/datasource/base_data_source.dart' as _i8;
import 'package:flutter_template/data/http_helper.dart' as _i4;
import 'package:flutter_template/data/repository.dart' as _i6;
import 'package:flutter_template/domain/api_source.dart' as _i7;
import 'package:flutter_template/domain/repository.dart' as _i5;
import 'package:flutter_template/presentation/page/home/bloc/home_bloc.dart'
    as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.HomeBloc>(() => _i3.HomeBloc());
    gh.singleton<_i4.HttpHelper>(_i4.HttpHelper());
    gh.factory<_i5.Repository>(() => _i6.AppRepository(gh<_i7.ApiSource>()));
    gh.singleton<_i8.BaseDataSource>(_i8.BaseDataSource(gh<_i4.HttpHelper>()));
    return this;
  }
}
