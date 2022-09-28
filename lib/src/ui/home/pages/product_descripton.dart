import 'package:kopa/src/core/base_widgets/base_statless_widget.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kopa/resources/colors.dart';
import 'package:kopa/resources/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDescripton extends BaseStatelessWidget {
  const ProductDescripton({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cardBg,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                // BIG IMAGE. IN FUTURE - SLIDER!
                Container(
                  width: Get.width,
                  height: Get.height * 0.5,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage(AppImages.product),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                // BACK BUTTON
                IconButton(
                  onPressed: Get.back,
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: AppColors.textWhite,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // PRICE CONTAINER
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 5,
                  ),
                  decoration: const BoxDecoration(
                    color: AppColors.priceBox,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    '100\$',
                    style: AppFonts.size16Bold.copyWith(
                      color: AppColors.background,
                    ),
                  ),
                ),
                // ADD TO FAVORITE BUTTON
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    AppIcons.favorite,
                    color: AppColors.textWhite,
                    height: 30,
                    width: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
