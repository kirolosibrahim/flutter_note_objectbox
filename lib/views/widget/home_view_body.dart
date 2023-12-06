import 'package:flutter/material.dart';

import '../../builder/home_bloc_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        AppBar(
          title: const Text('Note App'),
        ),
        const Expanded(
          child: HomeBlocBuilder(),
        ),
      ],
    );
  }
}
