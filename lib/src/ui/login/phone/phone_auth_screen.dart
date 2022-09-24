import 'package:kopa/src/ui_widgets/custome_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kopa/src/ui_widgets/buttons.dart';
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
  State<StatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends State<PhoneAuthScreen> {
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
                  controller: otpVerifyActive ? otpController : phoneController,
                  obscure: otpVerifyActive ? true : false,
                  hint: otpVerifyActive ? null : AppText.phoneHint,
                ),
                const SizedBox(height: 10),
                LongBlueButtonWidget(
                  onPressed: otpVerifyActive ? verifyOTP : loginWithPhone,
                  text:
                      otpVerifyActive ? AppText.otpButton : AppText.phoneButton,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // TODO: Separated verify logic to another page
  void loginWithPhone() async {
    auth.verifyPhoneNumber(
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
        otpVerifyActive = true;
        verificationID = verificationId;
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
          showMessage(AppText.errorText);
        }
      },
    );
  }
}

showMessage(var text) {
  return Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 2,
    backgroundColor: AppColors.background,
    textColor: AppColors.textWhite,
    fontSize: 14.0,
  );
}
