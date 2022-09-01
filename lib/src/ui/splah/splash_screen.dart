import 'package:kopa/src/ui/login/login_screen.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:kopa/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(
        seconds: 2,
      ),
      () => Get.to(
        const LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              pathLittleTriangle,
            ),
          ),
          const SizedBox(
            height: 175,
          ),
          Container(
            height: 420,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  pathSplashScreen,
                ),
                scale: 0.9,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
