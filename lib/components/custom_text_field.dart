import 'package:flutter/material.dart';
import 'package:notes/styles/style.dart';

class CustomTextField extends StatelessWidget {
  final void Function() onTap;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String hintText;
  final TextStyle? textStyle;
  final Function(String value)? onChanged;
  final Widget? label;
  final TextStyle? labelStyle;
  final Widget? icon;
  final TextStyle? hintStyle;
  final FormFieldValidator<String>? validator;
  // final MultiValidator? multiValidator;

  const CustomTextField({
    required this.onTap,
    required this.hintText,
    this.label,
    this.textStyle,
    this.hintStyle,
    this.onChanged,
    this.labelStyle,
    this.icon,
    this.validator,
    // this.multiValidator,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: icon,
        fillColor: ColorsProject.gray300,
        filled: true,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white24,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              10.0,
            ),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        labelStyle: labelStyle ??
            Fonts.body2Nunito.copyWith(
              color: ColorsProject.coolGray,
            ),
        label: label,
        hintText: hintText,
        hintStyle: hintStyle ??
            Fonts.body2Nunito.copyWith(
              color: ColorsProject.gray400,
            ),
      ),
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      style: textStyle ??
          Fonts.body2Nunito.copyWith(
            color: ColorsProject.coolGray,
          ),
    );
  }
}
