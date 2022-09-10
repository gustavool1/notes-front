import 'package:get/get.dart';
import 'package:notes/store/login/login.store.dart';
import 'package:notes/store/store.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppStore(), fenix: true);
    Get.lazyPut(() => NotesStore(), fenix: true);
    Get.lazyPut(() => LoginStore(), fenix: true);
  }

  void initBindings() {
    AppBindings().dependencies();
  }
}
