import '../../models/models.dart';

abstract class NoteInterface {
  Future<Note> getNote(String noteId);
}
