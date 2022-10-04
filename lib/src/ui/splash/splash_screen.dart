import 'package:kopa/src/core/base_widgets/base_statless_widget.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:kopa/src/ui/login/login_screen.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:kopa/resources/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends BaseStatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: AppColors.background,
      splashIconSize: double.infinity,
      nextScreen: LoginScreen(),
      splash: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.sneaker),
            scale: 0.9,
          ),
        ),
      ),
    );
  }
}
