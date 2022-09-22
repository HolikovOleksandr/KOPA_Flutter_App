// ignore_for_file: avoid_print

import 'package:kopa/src/ui_widgets/custome_text_field.dart';
import 'package:kopa/src/ui_widgets/buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kopa/router/route_pathes.dart';
import 'package:kopa/resources/strings.dart';
import 'package:kopa/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneAuthScreen extends StatefulWidget {
  const PhoneAuthScreen({Key? key}) : super(key: key);

  @override
  State<PhoneAuthScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<PhoneAuthScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  bool otpVerifyActive = false;
  String verificationID = "";
  User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Container(
              height: MediaQuery.of(context).size.height / 2,
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
              //TODO: Add Visible vidget and create switch on OTP verefy column
              children: [
                CustomeTextField(
                  controller: phoneController,
                  obscure: false,
                  hint: AppText.phoneHint,
                ),
                LongBlueButtonWidget(
                  onPressed: loginWithPhone,
                  text: AppText.verifyButton,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // TODO: Separated verify logic to onother page
  void loginWithPhone() async {
    auth.verifyPhoneNumber(
      phoneNumber: AppText.phoneHint + phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          Fluttertoast.showToast(
            msg: AppText.successfulToast,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 2,
            backgroundColor: AppColors.background,
            textColor: AppColors.textWhite,
            fontSize: 14.0,
          );
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, [int? resendToken]) {
        otpVerifyActive = true;
        verificationID = verificationId;
        setState(() {});
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void verifyOTP() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationID, smsCode: otpController.text);

    await auth.signInWithCredential(credential).then(
      (value) {
        setState(() {
          user = FirebaseAuth.instance.currentUser;
        });
      },
    ).whenComplete(
      () {
        if (user != null) {
          () => Get.toNamed(AppRouter.homeScreen);
        } else {
          Fluttertoast.showToast(
            msg: AppText.failedToast,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 2,
            backgroundColor: AppColors.background,
            textColor: AppColors.textWhite,
            fontSize: 14.0,
          );
        }
      },
    );
  }
}
