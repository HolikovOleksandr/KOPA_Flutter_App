import 'package:kopa/src/ui/login/phone/phone_auth_controller.dart';
import 'package:kopa/src/ui_widgets/custome_text_field.dart';
import 'package:kopa/src/ui_widgets/buttons.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:kopa/router/route_pathes.dart';
import 'package:kopa/resources/strings.dart';
import 'package:kopa/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneAuthScreen extends StatefulWidget {
  const PhoneAuthScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends State<PhoneAuthScreen> {
  var authController = PhoneAuthcontroller();
  LoginScreenState() {
    Get.put(authController);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    authController.dispose();
    Get.delete<PhoneAuthcontroller>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: GetBuilder<PhoneAuthcontroller>(
        builder: (PhoneAuthcontroller controller) => SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60),
              Container(
                height: Get.height / 2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.sneaker),
                    scale: 0.9,
                  ),
                ),
              ),
              EnterButtonWidget(onTap: () => Get.toNamed(AppRouter.homeScreen)),
              const SizedBox(height: 40),
              Column(
                children: [
                  CustomeTextField(
                    controller: authController.otpVerifyActive
                        ? authController.otpController
                        : authController.phoneController,
                    obscure: authController.otpVerifyActive ? true : false,
                    hint: authController.otpVerifyActive
                        ? null
                        : AppText.phoneHint,
                  ),
                  const SizedBox(height: 10),
                  LongBlueButtonWidget(
                    onPressed: authController.otpVerifyActive
                        ? authController.verifyOTP
                        : authController.loginWithPhone,
                    text: authController.otpVerifyActive
                        ? AppText.otpButton
                        : AppText.phoneButton,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
