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
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorBackground,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(pathSmallTriangle),
              ),
              Row(
                children: [
                  const SizedBox(width: 20),
                  IconButton(
                    onPressed: () async {},
                    icon: const Icon(
                      Icons.language,
                      color: colorTextWhite,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(pathSplashScreen),
                    scale: 0.9,
                  ),
                ),
              ),
              EnterButtonWidget(
                onTap: () => Get.to(() => const HomeScreen()),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RegisterButonWidget(
                      svgPath: pathPhoneIcon,
                      color: colorRegisterButtonPhone,
                      onTap: () => Get.to(() => const PhoneAuthScreen()),
                    ),
                    RegisterButonWidget(
                      svgPath: pathFacebookIcon,
                      color: colorRegisterButtonFacebook,
                      onTap: () {},
                    ),
                    RegisterButonWidget(
                      svgPath: pathGoogleIcon,
                      color: colorRegisterButtonGoogle,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
