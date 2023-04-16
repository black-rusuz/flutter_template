import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final get = GetIt.instance;

@injectableInit
void initGetIt([String? env]) => get.init(environment: env);

@module
abstract class RegisterModule {}
