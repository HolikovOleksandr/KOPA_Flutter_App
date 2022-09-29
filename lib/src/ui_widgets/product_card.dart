import 'package:kopa/src/core/base_widgets/base_statless_widget.dart';
import 'package:kopa/src/core/models/product_model.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:kopa/router/route_pathes.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kopa/resources/colors.dart';
import 'package:kopa/resources/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCardWidget extends BaseStatelessWidget {
  final int index;

  const ProductCardWidget({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget getLayout(context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: GestureDetector(
            onTap: () => Get.toNamed(AppRouter.productDescription),
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.cardBg,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.16,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: Get.width * 0.35,
                    height: Get.height,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        image: AssetImage(Product.products[index].image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Product.products[index].model,
                        style: AppFonts.size16.copyWith(
                          color: AppColors.textWhite,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'footSizes'.tr,
                        style: AppFonts.size10.copyWith(
                          color: AppColors.textWhite,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Product.products[index].size.toString(),
                                style: AppFonts.size22.copyWith(
                                  color: AppColors.primary,
                                  wordSpacing: 1,
                                ),
                              ),
                              Text(
                                "countrySize".tr,
                                style: AppFonts.size10.copyWith(
                                  color: AppColors.textWhite,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 8),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Product.products[index].height.toString(),
                                style: AppFonts.size14.copyWith(
                                  color: AppColors.textWhite,
                                ),
                              ),
                              Text(
                                'height'.tr,
                                style: AppFonts.size10.copyWith(
                                  color: AppColors.textWhite,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 8),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Product.products[index].width.toString(),
                                style: AppFonts.size14.copyWith(
                                  color: AppColors.textWhite,
                                ),
                              ),
                              Text(
                                'width'.tr,
                                style: AppFonts.size10.copyWith(
                                  color: AppColors.textWhite,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        'material'.tr + Product.products[index].material,
                        style: AppFonts.size10
                            .copyWith(color: AppColors.sneakerTexture),
                      ),
                      const SizedBox(width: 8),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 16,
          left: 8,
          right: -1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 60,
                child: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    AppIcons.favorite,
                    color: AppColors.textWhite,
                    height: 30,
                    width: 18,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 8),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 5,
                ),
                decoration: const BoxDecoration(
                  color: AppColors.priceBox,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Text(
                  '${Product.products[index].price} \$',
                  style: AppFonts.size16Bold.copyWith(
                    color: AppColors.cardBg,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
