import 'package:kopa/resources/colors.dart';
import 'package:kopa/resources/fonts.dart';
import 'package:flutter/material.dart';
import 'package:kopa/src/core/base_widgets/base_statefull_widget.dart';

class AdvertsPage extends BaseStatefulWidget {
  const AdvertsPage({Key? key}) : super(key: key);

  @override
  State<AdvertsPage> createState() => _AdvertsPageState();
}

class _AdvertsPageState extends State<AdvertsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Text(
          'Adverts page',
          style: AppFonts.size26.copyWith(
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
