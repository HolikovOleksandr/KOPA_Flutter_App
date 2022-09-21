import 'package:kopa/resources/colors.dart';
import 'package:kopa/resources/fonts.dart';
import 'package:flutter/material.dart';

class AddAdvertPage extends StatefulWidget {
  const AddAdvertPage({Key? key}) : super(key: key);

  @override
  State<AddAdvertPage> createState() => _AddAdvertPageState();
}

class _AddAdvertPageState extends State<AddAdvertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Text(
          'Adding product page',
          style: AppFonts.size26.copyWith(
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
