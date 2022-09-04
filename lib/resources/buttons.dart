import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kopa/resources/colors.dart';
import 'package:kopa/resources/fonts.dart';
import 'package:flutter/material.dart';

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
          minimumSize: const Size.fromHeight(45),
          primary: colorPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          style: fontLongBlueButton,
          text,
        ),
      ),
    );
  }
}

// Register button
class RegisterButonWidget extends StatelessWidget {
  final String svgPath;
  final Callback onTap;
  final Color color;

  const RegisterButonWidget({
    Key? key,
    required this.svgPath,
    required this.onTap,
    required this.color,
  }) : super(key: key);

  _buttonRegisterStyle(Color color) {
    return BoxDecoration(
      shape: BoxShape.circle,
      color: color,
      boxShadow: [
        BoxShadow(
          spreadRadius: 1,
          blurRadius: 25,
          color: color,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buttonRegisterStyle(color),
      height: 70,
      width: 70,
      child: GestureDetector(
        onTap: onTap,
        child: SvgPicture.asset(
          fit: BoxFit.scaleDown,
          height: 25,
          width: 25,
          svgPath,
        ),
      ),
    );
  }
}