import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_note_objectbox/manager/note_cubit.dart';

import '../utils/functions.dart';
import '../views/widget/note_list_builder.dart';

class HomeBlocBuilder extends StatelessWidget {
  const HomeBlocBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final cubit = NoteCubit();

    return BlocConsumer<NoteCubit, NoteState>(
      builder: (context, state) {
        if (state is NoteLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is NoteSuccessState) {
          return NoteListBuilder(
            list: state.list,
          );
        }
        return Container();
      },
      listener: (BuildContext context, NoteState state) {
        if (state is NoteSuccessState) {
          FunctionsManager.toast(state.list.length.toString());
        }
      },
    );
  }
}
