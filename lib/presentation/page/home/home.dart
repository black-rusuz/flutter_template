import 'package:flutter/material.dart';

export 'bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('Hello'),
      ),
    );
  }
}
