// ignore_for_file: avoid_print

import 'package:kopa/resources/custome_text_field.dart';
import 'package:kopa/src/ui/home/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kopa/resources/buttons.dart';
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
  bool otpVisibility = false;
  String verificationID = "";
  User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                pathSmallTriangle,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 60),
            Container(
              height: 410,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(pathSplashScreen),
                  scale: 0.9,
                ),
              ),
            ),
            EnterButtonWidget(onTap: () => Get.to(() => const HomeScreen())),
            const SizedBox(height: 40),
            CustomeTextField(
              controller: phoneController,
              obscure: false,
              prefix: "+38",
            ),
            LongBlueButtonWidget(
              onPressed: loginWithPhone,
              text: "Верифiкувати",
            ),
          ],
        ),
      ),
    );
  }

  void loginWithPhone() async {
    auth.verifyPhoneNumber(
      phoneNumber: "+38 ${phoneController.text}",
      // phoneNumber: phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          Fluttertoast.showToast(
            msg: "Успiх!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 2,
            backgroundColor: colorBackground,
            textColor: colorTextWhite,
            fontSize: 14.0,
          );
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        otpVisibility = true;
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
          Get.to(() => const HomeScreen());
        } else {
          Fluttertoast.showToast(
            msg: "Помилка",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 2,
            backgroundColor: colorBackground,
            textColor: colorTextWhite,
            fontSize: 14.0,
          );
        }
      },
    );
  }
}
