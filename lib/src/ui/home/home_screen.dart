import 'package:fluttertoast/fluttertoast.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kopa/resources/colors.dart';
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
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
