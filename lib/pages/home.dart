import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            color: ColorsProject.gray600,
            child: Padding(
              padding: const EdgeInsets.all(100.0),
              child: Center(
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
            ),
          ),
        ],
      ),
    );
  }
}
