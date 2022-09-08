import '../api/api.dart';
import '../models/models.dart';

class NotesRepository {
  final _services = Services();

  Future<Note> getNoteById(String id) async {
    try {
      final response = await _services.api
          .get(ApiRoutes().noteById, queryParameters: {"noteId": id});
      return Note.fromMap(response.data);
    } catch (e) {
      throw Exception("Exception on NotesRepository.getNoteById $e");
    }
  }
}
