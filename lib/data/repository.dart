import 'package:injectable/injectable.dart';

import '../domain/api_source.dart';
import '../domain/repository.dart';

@Injectable(as: Repository)
class AppRepository implements Repository {
  final ApiSource _remoteDataSource;

  AppRepository(this._remoteDataSource);
}
