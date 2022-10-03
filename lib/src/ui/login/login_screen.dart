import 'package:kopa/src/core/base_widgets/base_statefull_widget.dart';
import 'package:kopa/src/ui/widgets/buttons.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:kopa/router/route_pathes.dart';
import 'package:kopa/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends BaseStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.sneaker),
                  scale: 0.9,
                ),
              ),
            ),
            const SizedBox(height: 40),
            EnterButtonWidget(onTap: () => Get.toNamed(AppRouter.homeScreen)),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RegisterButonWidget(
                    svgPath: AppIcons.phone,
                    color: AppColors.registerButtonPhone,
                    onTap: () => Get.toNamed(AppRouter.phoneAuthScreen),
                  ),
                  RegisterButonWidget(
                    svgPath: AppIcons.facebook,
                    color: AppColors.registerButtonFacebook,
                    onTap: () {},
                  ),
                  RegisterButonWidget(
                    svgPath: AppIcons.google,
                    color: AppColors.registerButtonGoogle,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
