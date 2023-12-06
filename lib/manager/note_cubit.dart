import 'package:bloc/bloc.dart';
import 'package:flutter_note_objectbox/di/di.dart';
import 'package:flutter_note_objectbox/objectbox.g.dart';
import 'package:meta/meta.dart';

import '../entity/note_entity.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitialState());
  var noteBox = getIt<Box<NoteEntity>>();

  void getList() async {
    emit(NoteLoadingState());
    await noteBox.getAllAsync().then((value) {
      if (value.isNotEmpty) {
        emit(NoteSuccessState(list: value));
      } else {
        emit(NoteFailureState());
      }
    });
  }

  void addNote({
    required String title,
    required String body,
  }) async {
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    _addNew(title, body);
    getList();
  }

  void _addNew(String title, String body) {
    noteBox
        .putAsync(NoteEntity(title: title, body: body), mode: PutMode.put)
        .then((value) {});
  }
}
