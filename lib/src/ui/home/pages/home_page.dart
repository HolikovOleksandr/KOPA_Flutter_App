import 'package:kopa/src/core/ui/widgets/base_statefull_widget.dart';
import 'package:kopa/src/core/models/product_model.dart';
import 'package:kopa/src/ui_widgets/product_card.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kopa/resources/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends BaseStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
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
                padding: const EdgeInsets.only(left: 24.0),
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
          Flexible(
            child: ListView.builder(
              itemCount: Product.products.length,
              itemBuilder: (BuildContext context, index) {
                return ProductCardWidget(index: index);
              },
            ),
          )
        ],
      ),
    );
  }
}
