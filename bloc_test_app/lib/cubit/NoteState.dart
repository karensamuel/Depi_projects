import '../NotesDataBase.dart';

abstract class NoteState {}

class NotesInitial extends NoteState {}

class NotesLoading extends NoteState {}

class NotesLoaded extends NoteState {
  final List<Note> notes; // you can replace with List<Note>
  NotesLoaded({required this.notes});
}

class NotesError extends NoteState {
  final String message;
  NotesError({required this.message});
}
