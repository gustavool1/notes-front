import 'package:get/get.dart';
import 'package:notes/navigator/routes.dart';
import 'package:notes/pages/pages.dart';

class AppPages {
  static final routes = <GetPage>[
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
    ),
  ];
}
