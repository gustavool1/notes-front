import 'package:flutter/material.dart';
import 'package:notes/styles/style.dart';

class Button extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  const Button({
    required this.child,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        splashFactory: NoSplash.splashFactory,
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(vertical: 8),
        ),
        minimumSize: const MaterialStatePropertyAll<Size>(
          Size(324, 44),
        ),
        maximumSize: const MaterialStatePropertyAll<Size>(
          Size(324, 44),
        ),
        backgroundColor: MaterialStatePropertyAll<Color?>(
            backgroundColor ?? ColorsProject.purple500),
      ),
      child: child,
    );
  }
}
