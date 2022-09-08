import 'package:get/get.dart';
import 'package:notes/store/notes.store.dart';

export 'notes.store.dart';

class AppStore extends GetxController {
  NotesStore get notes => GetInstance().find<NotesStore>();
}
