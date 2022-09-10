import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notes/styles/style.dart';

import '../components/components.dart';

class LoginPage extends StatelessWidget {
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

  Widget get inputs => Column(
        children: [
          SizedBox(
            width: 324,
            height: 48,
            child: CustomTextField(
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
      );
  // Widget get form => Form(child: child)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: ColorsProject.gray600,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70.0,
            left: 16.0,
            right: 16.0,
          ),
          child: Column(children: [
            welcomeMessage,
            inputs,
          ]),
        ),
      ),
    );
  }
}
