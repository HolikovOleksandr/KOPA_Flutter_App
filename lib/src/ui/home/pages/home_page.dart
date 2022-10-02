// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:kopa/src/core/base_widgets/base_statless_widget.dart';
import 'package:kopa/src/core/controllers/product_controllers.dart';
import 'package:kopa/src/core/models/product_model.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:kopa/resources/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kopa/resources/fonts.dart';
import 'package:get/get.dart';
import 'package:kopa/src/ui_widgets/product_card.dart';

class HomePage extends BaseStatelessWidget {
  ProductController productController = Get.put(ProductController());
  HomePage({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
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
          ListView.builder(
            
            itemCount: productController.products.length,
            itemBuilder: (context, index) {
              var currentProduct = productController.products[index];
              return ProductCardWidget(
                currentProduct: currentProduct,
                
                onTab: () {},
              );
            },
          )
        ],
      ),
    );
  }
}
