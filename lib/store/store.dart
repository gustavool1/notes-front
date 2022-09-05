import 'package:get/get.dart';
import 'package:notes/store/notes.dart';

export 'notes.dart';

class AppStore extends GetxController {
  NotesStore get notes => GetInstance().find<NotesStore>();
}
