import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

export '../../../domain/provider/home/home_bloc.dart';

@injectable
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}
