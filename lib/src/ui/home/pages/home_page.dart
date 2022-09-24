import 'package:kopa/src/core/ui/show_message_mixin.dart';
import 'package:kopa/src/core/ui/widgets/base_statefull_widget.dart';
import 'package:kopa/src/ui/login/phone/phone_auth_screen.dart';
import 'package:kopa/src/ui_widgets/product_card.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kopa/resources/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends BaseStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      const SizedBox(height: 80),
                      SvgPicture.asset(
                        AppIcons.soart,
                        fit: BoxFit.scaleDown,
                        height: 20,
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset(AppImages.simpsonMouth),
            ],
          ),
          ListView.builder(itemBuilder: (context, index) {
            return const ProductCardWidget();
          })
        ],
      ),
    );
  }
}
