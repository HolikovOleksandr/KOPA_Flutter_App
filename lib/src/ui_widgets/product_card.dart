import 'package:kopa/resources/strings.dart';
import 'package:kopa/src/core/ui/widgets/base_statless_widget.dart';
import 'package:kopa/src/models/product_model.dart';
import 'package:kopa/resources/colors.dart';
import 'package:kopa/resources/fonts.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends BaseStatelessWidget {
  final int index;

  const ProductCardWidget({required this.index, Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
            Image.asset(
              Product.products[index].image,
              height: double.infinity,
              fit: BoxFit.fill,
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
                  AppText.footSizes,
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
                          AppText.countrySize,
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
                          AppText.height,
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
                          AppText.width,
                          style: AppFonts.size10.copyWith(
                            color: AppColors.textWhite,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  AppText.material + Product.products[index].material,
                  style:
                      AppFonts.size10.copyWith(color: AppColors.sneakerTexture),
                ),
                const SizedBox(width: 8),
              ],
            )
          ],
        ),
      ),
    );
  }
}
