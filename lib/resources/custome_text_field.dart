import 'package:kopa/resources/colors.dart';
import 'package:kopa/resources/fonts.dart';
import 'package:flutter/material.dart';

class CustomInputFieldWidget extends StatefulWidget {
  final TextEditingController? controller;
  final String? prefix;
  final bool obscure;

  const CustomInputFieldWidget({
    Key? key,
    this.controller,
    this.prefix,
    required this.obscure,
  }) : super(key: key);

  @override
  State<CustomInputFieldWidget> createState() => _CustomInputFieldWidgetState();
}

class _CustomInputFieldWidgetState extends State<CustomInputFieldWidget> {
  final controller = TextEditingController();
  final prefix = "";
  final obscure = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: TextField(
        obscureText: obscure,
        controller: controller,
        maxLength: 10,
        style: fontInputText,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          prefix: Padding(
            padding: const EdgeInsets.only(left: 30, top: 5, bottom: 5),
            child: Text(prefix),
          ),
          hintStyle: fontInputText,
          counterStyle: const TextStyle(color: colorBackground),
          //
          //Error text
          // errorText: 'Номер введено невiрно',
          // errorStyle: fontErrorText,
          prefixStyle: fontInputText,
          contentPadding: const EdgeInsets.only(left: 10),
          // Focus
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(
              color: colorPrimary,
              width: 2,
            ),
          ),
          // Enable
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(
              color: colorInput,
              width: 2,
            ),
          ),
          // Error
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(
              color: colorErrorInput,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
