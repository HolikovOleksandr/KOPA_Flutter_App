import 'package:kopa/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kopa/src/core/base_widgets/base_statless_widget.dart';

class CoreApp extends BaseStatelessWidget {
  const CoreApp({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      unknownRoute: unknownRoute,
      initialRoute: rootRoute,
      navigatorKey: Get.key,
      getPages: routes,
    );
  }
}
