import 'package:injectable/injectable.dart';

import '../domain/repository.dart';
import 'datasource/base_data_source.dart';

@Injectable(as: Repository)
class AppRepository implements Repository {
  final BaseDataSource _remoteDataSource;

  AppRepository(this._remoteDataSource);
}
