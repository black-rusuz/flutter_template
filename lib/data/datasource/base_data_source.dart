import 'package:injectable/injectable.dart';

import '../../domain/api_source.dart';

@singleton
class BaseDataSource extends ApiSource {
  BaseDataSource(super.http);
}
