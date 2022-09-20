import 'package:kopa/src/ui/login/phone/phone_auth_screen.dart';
import 'package:kopa/src/ui/unknown/unknown_page.dart';
import 'package:kopa/src/ui/splash/splash_screen.dart';
import 'package:kopa/src/ui/login/login_screen.dart';
import 'package:kopa/src/ui/home/home_screen.dart';
import 'package:kopa/router/route_pathes.dart';
import 'package:get/get.dart';

final routes = [
  GetPage(
    name: routeSplashScreen,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: routeLoginScreen,
    page: () => const LoginScreen(),
  ),
  GetPage(
    name: routePhoneAuthScreen,
    page: () => const PhoneAuthScreen(),
  ),
  GetPage(
    name: routeHomeScreen,
    page: () => const HomeScreen(),
  ),
];

const String rootRoute = routeSplashScreen;

final unknownRoute = GetPage(
  name: unknownPageScreen,
  page: () => const UnknownPage(),
);
