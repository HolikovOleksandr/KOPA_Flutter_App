import 'package:kopa/src/core/base_widgets/base_statefull_widget.dart';
import 'package:kopa/resources/colors.dart';
import 'package:kopa/resources/fonts.dart';
import 'package:flutter/material.dart';

class MyProductsPage extends BaseStatefulWidget {
  const MyProductsPage({Key? key}) : super(key: key);

  @override
  State<MyProductsPage> createState() => _MyProductsPageState();
}

class _MyProductsPageState extends State<MyProductsPage> {
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
