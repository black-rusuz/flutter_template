import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'presentation/app_theme.dart';
import 'presentation/page/home/home.dart';

class DevHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (_, __, ___) => true;
  }
}

Future<void> setupApp() async {
  if (kDebugMode) HttpOverrides.global = DevHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  initGetIt(Environment.dev);
}

void main() {
  runZoned(
    () => setupApp().then((_) => runApp(const MyApp())),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TODO: Название
      title: 'Flutter Template',
      theme: AppTheme.get(),
      initialRoute: AppRoutes.main,
      onGenerateRoute: AppRoutes.navigate,
    );
  }
}

// TODO: Навигация
class AppRoutes {
  static const main = '/main';

  static Route getPage(Widget child) {
    return MaterialPageRoute(builder: (_) => child);
  }

  static Route? navigate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.main:
        return getPage(BlocProvider(
          create: (_) => get<HomeBloc>(),
          child: const HomePage(),
        ));
    }
    return null;
  }
}
