import 'package:get/get.dart';
import 'package:notes/store/store.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppStore(), fenix: true);
    Get.lazyPut(() => NotesStore(), fenix: true);
  }

  void initBindings() {
    AppBindings().dependencies();
  }
}
