import 'package:get/get.dart';
import 'package:notes/store/login/login.store.dart';
import 'package:notes/store/notes/notes.store.dart';

export 'notes/notes.store.dart';

class AppStore extends GetxController {
  NotesStore get notes => GetInstance().find<NotesStore>();
  LoginStore get login => GetInstance().find<LoginStore>();
}
