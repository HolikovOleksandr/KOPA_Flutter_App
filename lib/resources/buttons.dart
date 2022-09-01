import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:kopa/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:kopa/resources/fonts.dart';

// Enter button
class EnterButtonWidget extends StatelessWidget {
  final Callback onTap;
  const EnterButtonWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset(
          pathCurveButton,
        ),
        TextButton(
          onPressed: onTap,
          child: const Text(
            'Вхiд',
            style: fontEnterButton,
          ),
        ),
      ],
    );
  }
}

// Long blue button
class LongBlueButtonWidget extends StatelessWidget {
  final Callback onPressed;
  final String text;
  const LongBlueButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: colorPrimary,
          minimumSize: const Size.fromHeight(45),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: fontLongBlueButton,
        ),
      ),
    );
  }
}

// Register button
class RegisterButonWidget extends StatelessWidget {
  final String imagePath;
  final Callback onTap;
  final Color color;

  const RegisterButonWidget({
    Key? key,
    required this.imagePath,
    required this.onTap,
    required this.color,
  }) : super(key: key);

  _buttonRegisterStyle(Color color) {
    return BoxDecoration(
      color: color,
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: color,
          blurRadius: 25,
          spreadRadius: 1,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: _buttonRegisterStyle(color),
      child: GestureDetector(
        onTap: onTap,
        child: Image.asset(imagePath),
      ),
    );
  }
}
