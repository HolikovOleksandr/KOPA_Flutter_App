import 'package:kopa/src/ui/login/phone/phone_auth_screen.dart';
import 'package:kopa/src/ui/home/home_screen.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:kopa/resources/buttons.dart';
import 'package:kopa/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                pathLittleTriangle,
              ),
            ),
            const SizedBox(
              height: 95,
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
            EnterButtonWidget(
              onTap: () => Get.to(const HomeScreen()),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RegisterButonWidget(
                    imagePath: pathPhoneIcon,
                    color: colorRegisterButtonPhone,
                    onTap: () => Get.to(const PhoneAuthScreen()),
                  ),
                  RegisterButonWidget(
                    imagePath: pathFacebookIcon,
                    color: colorRegisterButtonFacebook,
                    onTap: () {},
                  ),
                  RegisterButonWidget(
                    imagePath: pathGoogleIcon,
                    color: colorRegisterButtonGoogle,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
