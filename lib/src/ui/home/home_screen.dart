import 'package:kopa/resources/asset_pathes.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kopa/resources/colors.dart';
import 'package:kopa/resources/fonts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: Column(
        children: [
          const SizedBox(
            width: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                ),
                child: GestureDetector(
                  onTap: () => Fluttertoast.showToast(
                    msg: 'TODO: Soart product cards',
                  ),
                  child: SvgPicture.asset(
                    pathSoartIcon,
                    fit: BoxFit.scaleDown,
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              Image.asset(
                pahtSimpsonMouth,
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: const [
                ProductCardWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Product card
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
          Image.asset(
            pathSneaker,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nike 992K',
                style: fontSize16.copyWith(
                  color: colorTextWhite,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Розмiри стопи:',
                style: fontSize10.copyWith(
                  color: colorTextWhite,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
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
