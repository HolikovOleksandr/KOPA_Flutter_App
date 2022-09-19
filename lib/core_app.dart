import 'package:kopa/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoreApp extends StatelessWidget {
  const CoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      unknownRoute: unknownRoute,
      initialRoute: rootRoute,
      navigatorKey: Get.key,
      getPages: routes,
    );
  }
}
