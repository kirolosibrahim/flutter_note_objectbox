import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../entity/note_entity.dart';
import '../../manager/note_cubit.dart';
import 'note_item_list.dart';

class NoteListBuilder extends StatelessWidget {
  final List<NoteEntity> list;

  const NoteListBuilder({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<NoteCubit>(context);
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        var note = list[index];

        return NoteItemList(
          note: note,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Gap(
          5,
        );
      },
      itemCount: list.length,
    );
  }
}
