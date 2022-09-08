import 'package:get/get.dart';
import 'package:notes/models/note.dart';

import '../repositories.dart/repositories.dart';
import 'interfaces/interface.dart';

class NotesStore extends GetxController implements NoteInterface {
  final _repository = NotesRepository();

  @override
  Future<Note> getNote(String noteId) async {
    return await _repository.getNoteById(noteId);
  }
}
