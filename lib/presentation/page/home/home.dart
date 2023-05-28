import 'package:flutter/material.dart';

import '../../widget/basic_card.dart';
import '../../widget/basic_image.dart';
import '../../widget/basic_modal.dart';

export 'bloc/home_bloc.dart';

const _imageExampleUrl =
    'https://upload.wikimedia.org/wikipedia/commons/4/47/PNG_transparency_demonstration_1.png';

const _padding = EdgeInsets.all(15);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const BasicImage(_imageExampleUrl),
            BasicCard(
              onTap: () => BasicModal.show(
                context: context,
                image: const BasicImage(_imageExampleUrl),
                child: const Center(child: Text('kek')),
              ),
              padding: _padding,
              color: Colors.blue,
              child: const Text('I am BasicCard'),
            )
          ],
        ),
      ),
    );
  }
}
