// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_template/data/datasource/base_data_source.dart' as _i4;
import 'package:flutter_template/data/repository.dart' as _i7;
import 'package:flutter_template/domain/api_source.dart' as _i3;
import 'package:flutter_template/domain/repository.dart' as _i6;
import 'package:flutter_template/presentation/page/home/bloc/home_bloc.dart'
    as _i5;
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
    gh.singleton<_i3.ApiSource>(_i4.BaseDataSource());
    gh.factory<_i5.HomeBloc>(() => _i5.HomeBloc());
    gh.factory<_i6.Repository>(
        () => _i7.AppRepository(gh<_i4.BaseDataSource>()));
    return this;
  }
}
