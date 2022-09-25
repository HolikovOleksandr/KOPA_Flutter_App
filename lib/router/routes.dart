import 'package:kopa/src/ui/login/phone/phone_auth_screen.dart';
import 'package:kopa/src/ui/home/pages/product_descripton.dart';
import 'package:kopa/src/ui/unknown/unknown_page.dart';
import 'package:kopa/src/ui/splash/splash_screen.dart';
import 'package:kopa/src/ui/login/login_screen.dart';
import 'package:kopa/src/ui/home/home_screen.dart';
import 'package:kopa/router/route_pathes.dart';
import 'package:get/get.dart';

final routes = [
  GetPage(
    name: AppRouter.splashScreen,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: AppRouter.loginScreen,
    page: () => const LoginScreen(),
  ),
  GetPage(
    name: AppRouter.phoneAuthScreen,
    page: () => const PhoneAuthScreen(),
  ),
  GetPage(
    name: AppRouter.homeScreen,
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: AppRouter.productDescription,
    page: () => const ProductDescripton(),
  ),
];

const String rootRoute = AppRouter.splashScreen;

final unknownRoute = GetPage(
  name: AppRouter.unknownScreen,
  page: () => const UnknownPage(),
);
