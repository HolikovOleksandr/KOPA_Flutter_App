import 'package:kopa/src/core/base_widgets/base_statefull_widget.dart';
import 'package:kopa/resources/colors.dart';
import 'package:kopa/resources/fonts.dart';
import 'package:flutter/material.dart';

class ProfilePage extends BaseStatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Text(
          'Profile page',
          style: AppFonts.size26.copyWith(
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
