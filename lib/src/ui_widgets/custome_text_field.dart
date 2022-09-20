import 'package:kopa/resources/colors.dart';
import 'package:kopa/resources/fonts.dart';
import 'package:flutter/material.dart';

class CustomeTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscure;

  const CustomeTextField({
    Key? key,
    required this.controller,
    required this.hint,
    required this.obscure,
  }) : super(key: key);

  @override
  State<CustomeTextField> createState() => _CustomeTextFieldState();
}

class _CustomeTextFieldState extends State<CustomeTextField> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: TextField(
        keyboardType: TextInputType.phone,
        controller: controller,
        style: fontSize14.copyWith(color: colorTextWhite),
        obscureText: widget.obscure,
        maxLength: 10,
        decoration: InputDecoration(
          helperText: widget.hint,
          counterStyle: fontSize10.copyWith(
            color: colorBackground,
          ),
          prefixStyle: fontSize14.copyWith(
            color: colorTextWhite,
          ),
          hintStyle: fontSize14.copyWith(
            color: colorTextWhite,
          ),
          //
          //Error text
          // errorText: 'Номер введено невiрно',
          // errorStyle: fontSize10,
          // contentPadding: const EdgeInsets.only(left: 10),

          // Focus
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(
              color: colorPrimary,
              width: 2,
            ),
          ),
          // Enable
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(
              color: colorInput,
              width: 2,
            ),
          ),
          // Error
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
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
