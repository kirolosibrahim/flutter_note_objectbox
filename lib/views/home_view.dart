import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_note_objectbox/manager/note_cubit.dart';
import 'package:flutter_note_objectbox/utils/functions.dart';

import 'widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController titleTextEditingController = TextEditingController();
    TextEditingController bodyTextEditingController = TextEditingController();

    var cubit = context.watch<NoteCubit>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FunctionsManager.showAddEntityBottomSheet(
            context,
            () {
              cubit.addNote(
                  title: titleTextEditingController.text,
                  body: bodyTextEditingController.text);
              Navigator.pop(context);
            },
            titleTextEditingController,
            bodyTextEditingController,
          );
        },
      ),
      body: const SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
