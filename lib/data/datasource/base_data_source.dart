import 'package:injectable/injectable.dart';

import '../../domain/api_source.dart';

@Singleton(as: ApiSource)
class BaseDataSource extends ApiSource {}
