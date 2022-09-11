import 'package:flutter/material.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:kopa/resources/colors.dart';
import 'package:kopa/resources/fonts.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: colorGreyCardBG,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ), // color: colorGreyCardBG,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(pathSneaker),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nike 992K',
                style: fontSize16.copyWith(
                  color: colorTextWhite,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Розмiри стопи:',
                style: fontSize10.copyWith(
                  color: colorTextWhite,
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
                        style: fontSize22.copyWith(
                          color: colorPrimary,
                          wordSpacing: 1,
                        ),
                      ),
                      Text(
                        'EU',
                        style: fontSize10.copyWith(
                          color: colorTextWhite,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '28.5',
                        style: fontSize14.copyWith(
                          color: colorTextWhite,
                        ),
                      ),
                      Text(
                        'Довжина/см',
                        style: fontSize10.copyWith(
                          color: colorTextWhite,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '10',
                        style: fontSize14.copyWith(
                          color: colorTextWhite,
                        ),
                      ),
                      Text(
                        'Ширина/см',
                        style: fontSize10.copyWith(
                          color: colorTextWhite,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                'Матеріал: шкiра',
                style: fontSize10.copyWith(
                  color: colorSneakerTexture,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
