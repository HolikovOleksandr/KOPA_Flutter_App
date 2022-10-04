import 'package:kopa/src/core/base_widgets/base_statefull_widget.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:kopa/src/ui/pages/add_advert_page.dart';
import 'package:kopa/src/ui/pages/fovorite_page.dart';
import 'package:kopa/src/ui/pages/adverts_page.dart';
import 'package:kopa/src/ui/pages/home_page.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:kopa/src/ui/pages/user_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kopa/resources/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends BaseStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedPage = 0;

  final _pageOption = [
    HomePage(),
    const AdvertsPage(),
    const AddAdvertPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: _pageOption[selectedPage],
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        activeColor: AppColors.primary,
        initialActiveIndex: selectedPage,
        backgroundColor: AppColors.navBarBg,
        height: MediaQuery.of(context).size.height * 0.09,
        items: [
          TabItem(
            icon: SvgPicture.asset(
              AppIcons.window,
              color: AppColors.disableIcon,
              height: 22,
              width: 22,
            ),
            activeIcon: SvgPicture.asset(
              AppIcons.window,
              color: AppColors.primary,
            ),
          ),
          TabItem(
            icon: SvgPicture.asset(
              AppIcons.shoes,
              color: AppColors.disableIcon,
              height: 30,
              width: 30,
            ),
            activeIcon: SvgPicture.asset(
              AppIcons.shoes,
              color: AppColors.primary,
            ),
          ),
          TabItem(
            icon: SvgPicture.asset(
              AppIcons.add,
              color: AppColors.textWhite,
              height: 22,
              width: 22,
            ),
            activeIcon: SvgPicture.asset(
              AppIcons.add,
              color: AppColors.textWhite,
            ),
          ),
          TabItem(
            icon: SvgPicture.asset(
              AppIcons.favorite,
              color: AppColors.disableIcon,
              height: 22,
              width: 22,
            ),
            activeIcon: SvgPicture.asset(
              AppIcons.favorite,
              color: AppColors.primary,
            ),
          ),
          TabItem(
            icon: SvgPicture.asset(
              AppIcons.settings,
              color: AppColors.disableIcon,
              height: 22,
              width: 22,
            ),
            activeIcon: SvgPicture.asset(
              AppIcons.settings,
              color: AppColors.primary,
            ),
          ),
        ],
        // use GetX
        onTap: (int index) {
          setState(
            () {
              selectedPage = index;
            },
          );
        },
      ),
    );
  }
}
