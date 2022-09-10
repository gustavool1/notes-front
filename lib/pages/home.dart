import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/components/components.dart';
import 'package:notes/components/custom_text_field.dart';
import 'package:notes/store/use_store.dart';
import 'package:notes/styles/style.dart';

class HomePage extends UseAppStore {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // store.notes.getNote("bf6998f7-7737-48b0-aefb-2710a104a73a");
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: ColorsProject.gray600,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Button(
                    backgroundColor: ColorsProject.white,
                    child: SizedBox(
                      width: 240,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FaIcon(
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
                ),
                Center(
                  child: CustomTextField(
                    onTap: () => print('aaaa'),
                    // label: const Text('Nome'),
                    hintText: 'Nome',
                    icon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(
                        Assets.lock,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
