import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/di/bindings.dart';
import 'package:notes/navigator/pages.dart';
import 'package:notes/navigator/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: AppBindings(),
      initialRoute: AppRoutes.home,
      getPages: AppPages.routes,
    );
  }
}
