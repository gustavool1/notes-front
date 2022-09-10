import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:notes/navigator/routes.dart';
import 'package:notes/store/use_store.dart';
import 'package:notes/styles/style.dart';

import '../components/components.dart';

class LoginPage extends UseAppStore {
  const LoginPage({super.key});

  Widget get welcomeMessage => Column(
        children: [
          Text(
            'Bem vindo!',
            style: Fonts.body1Nunito,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Por favor faça login na sua conta',
            style: Fonts.body2Nunito,
          )
        ],
      );

  Widget get inputs => Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Column(
          children: [
            SizedBox(
              width: 324,
              height: 48,
              child: CustomTextField(
                  controller: store.login.emailController,
                  onTap: () {},
                  hintText: 'Email',
                  icon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      Assets.mail,
                    ),
                  )),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 324,
              height: 48,
              child: CustomTextField(
                  controller: store.login.passwordController,
                  onTap: () {},
                  hintText: 'Email',
                  icon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      Assets.lock,
                    ),
                  )),
            ),
          ],
        ),
      );

  Widget get bottomSheet {
    return Container(
      color: ColorsProject.gray600,
      width: double.infinity,
      height: 200,
      child: Column(
        children: [
          Button(
            child: Text(
              'Entrar',
              style: Fonts.body1Nunito.copyWith(
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Button(
            backgroundColor: ColorsProject.white,
            child: SizedBox(
              width: 240,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.red,
                  ),
                  Text(
                    'Entrar com conta google',
                    style: Fonts.body2Nunito.copyWith(
                      fontWeight: FontWeight.normal,
                      color: ColorsProject.white200,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Não tem uma conta?',
                  style:
                      Fonts.body3Nunito.copyWith(color: ColorsProject.coolGray),
                ),
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.toNamed(AppRoutes.register),
                  text: ' Registre-se',
                  style: Fonts.body3Nunito.copyWith(
                    color: ColorsProject.purple500,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: ColorsProject.gray600,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60.0,
            left: 16.0,
            right: 16.0,
          ),
          child: Column(
            children: [
              welcomeMessage,
              inputs,
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: bottomSheet,
      // bottomSheet: bottomSheet,
    );
  }
}
