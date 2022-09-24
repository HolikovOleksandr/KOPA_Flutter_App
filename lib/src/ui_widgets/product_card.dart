import 'package:kopa/src/core/ui/widgets/base_statless_widget.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:kopa/resources/colors.dart';
import 'package:kopa/resources/fonts.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends BaseStatelessWidget {
  const ProductCardWidget({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.cardBg,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 5,
      ),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppImages.product),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nike 992K',
                style: AppFonts.size16.copyWith(
                  color: AppColors.textWhite,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Розмiри стопи:',
                style: AppFonts.size10.copyWith(
                  color: AppColors.textWhite,
                ),
              ),
              const SizedBox(width: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '40',
                        style: AppFonts.size22.copyWith(
                          color: AppColors.primary,
                          wordSpacing: 1,
                        ),
                      ),
                      Text(
                        'EU',
                        style: AppFonts.size10.copyWith(
                          color: AppColors.textWhite,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '28.5',
                        style: AppFonts.size14.copyWith(
                          color: AppColors.textWhite,
                        ),
                      ),
                      Text(
                        'Довжина/см',
                        style: AppFonts.size10.copyWith(
                          color: AppColors.textWhite,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '10',
                        style: AppFonts.size14.copyWith(
                          color: AppColors.textWhite,
                        ),
                      ),
                      Text(
                        'Ширина/см',
                        style: AppFonts.size10.copyWith(
                          color: AppColors.textWhite,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 15),
              Text(
                'Матеріал: шкiра',
                style: AppFonts.size10.copyWith(
                  color: AppColors.sneakerTexture,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
