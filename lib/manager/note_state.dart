part of 'note_cubit.dart';

@immutable
abstract class NoteState {}

class NoteInitialState extends NoteState {}

class NoteLoadingState extends NoteState {}

class NoteSuccessState extends NoteState {
  final List<NoteEntity> list;

  NoteSuccessState({required this.list});
}

class NoteFailureState extends NoteState {}
