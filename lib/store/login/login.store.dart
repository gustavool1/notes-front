import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.interface.dart';
export 'login.interface.dart';

class LoginStore extends GetxController implements LoginInterface {
  @override
  final TextEditingController emailController = TextEditingController();

  @override
  final TextEditingController passwordController = TextEditingController();
}
