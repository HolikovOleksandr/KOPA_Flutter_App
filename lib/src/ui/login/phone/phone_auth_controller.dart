import 'package:firebase_auth/firebase_auth.dart';
import 'package:kopa/src/core/base_widgets/base_controller.dart';
import 'package:kopa/router/route_pathes.dart';
import 'package:kopa/resources/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneAuthcontroller extends BaseController {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  bool otpVerifyActive = false;
  String verificationID = '';
  User? user;

  Future<void> loginWithPhone() async {
    await auth.verifyPhoneNumber(
      phoneNumber: AppText.phoneHint + phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          showMessage(AppText.successfulToast);
        });
      },
      verificationFailed: (FirebaseAuthException exception) {
        showMessage(exception.message);
      },
      codeSent: (String verificationId, [int? resendToken]) {
        verificationID = verificationId;
        otpVerifyActive = true;
        update();
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  Future<void> verifyOTP() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationID, smsCode: otpController.text);

    await auth.signInWithCredential(credential).then(
      (value) {
        (() => user = FirebaseAuth.instance.currentUser);
        update();
      },
    ).whenComplete(
      () {
        if (user != null) {
          () => Get.toNamed(AppRouter.homeScreen);
        } else {
          showMessage(AppText.errorText);
        }
      },
    );
  }
}
