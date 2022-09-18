import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:kopa/src/ui/login/login_screen.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:kopa/resources/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: colorBackground,
      splashIconSize: double.infinity,
      nextScreen: const LoginScreen(),
      splash: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pathSplashScreen),
            scale: 0.9,
          ),
        ),
      ),
    );
  }
}
