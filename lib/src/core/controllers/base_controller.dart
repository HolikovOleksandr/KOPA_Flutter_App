import 'package:fluttertoast/fluttertoast.dart';
import 'package:kopa/resources/colors.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {
  showMessage(String text) {
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
}
