import 'package:kopa/src/ui/home/pages/add_advert_page.dart';
import 'package:kopa/src/ui/home/pages/fovorite_page.dart';
import 'package:kopa/src/ui/home/pages/adverts_page.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:kopa/src/ui/home/pages/profile_page.dart';
import 'package:kopa/src/ui/home/pages/home_page.dart';
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
  int selectedPage = 0;
  final _pageOption = const [
    HomePage(),
    AdvertsPage(),
    AddAdvertPage(),
    FavoritePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: _pageOption[selectedPage],
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        initialActiveIndex: selectedPage,
        backgroundColor: colorNavBarBg,
        height: MediaQuery.of(context).size.height * 0.09,
        //TODO: Fix icon`s size
        items: [
          TabItem(
            icon: SvgPicture.asset(pathWindowIcon, color: colorDisableIcon),
            activeIcon: SvgPicture.asset(pathWindowIcon, color: colorPrimary),
          ),
          TabItem(
            icon: SvgPicture.asset(pathShoesIcon, color: colorDisableIcon),
            activeIcon: SvgPicture.asset(pathShoesIcon, color: colorPrimary),
          ),
          TabItem(
            icon: SvgPicture.asset(pathAddIcon, color: colorDisableIcon),
            activeIcon: SvgPicture.asset(pathAddIcon, color: colorPrimary),
          ),
          TabItem(
            icon: SvgPicture.asset(pathFavoriteIcon, color: colorDisableIcon),
            activeIcon: SvgPicture.asset(pathFavoriteIcon, color: colorPrimary),
          ),
          TabItem(
            icon: SvgPicture.asset(pathSettingsIcon, color: colorDisableIcon),
            activeIcon: SvgPicture.asset(pathSettingsIcon, color: colorPrimary),
          ),
        ],
        onTap: (int index) {
          setState(() {
            selectedPage = index;
          });
        },
      ),
    );
  }
}

// Product card
