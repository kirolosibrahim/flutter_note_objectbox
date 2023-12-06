import 'package:flutter/material.dart';
import 'package:flutter_note_objectbox/entity/note_entity.dart';
import 'package:gap/gap.dart';

class NoteItemList extends StatelessWidget {
  final NoteEntity note;

  const NoteItemList({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [Text(note.title!), Text(note.body!)],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit),
              ),
              const Gap(10),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete_forever),
              ),
            ],
          )
        ],
      ),
    );
  }
}
