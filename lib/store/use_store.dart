import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'store.dart';

abstract class UseAppStore extends GetView<AppStore> {
  const UseAppStore({Key? key}) : super(key: key);
  AppStore get store => GetInstance().find<AppStore>();
}
