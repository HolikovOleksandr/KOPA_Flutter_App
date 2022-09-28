import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kopa/resources/asset_pathes.dart';
import 'package:kopa/resources/fonts.dart';
import 'package:kopa/resources/strings.dart';
import 'package:kopa/router/route_pathes.dart';
import 'package:kopa/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:kopa/src/core/base_widgets/base_statless_widget.dart';
import 'package:kopa/src/ui_widgets/buttons.dart';

class ProfilePage extends BaseStatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 80,
        ),
        child: Column(
          children: [
            Row(
              children: [
                const UserImage(),
                const SizedBox(width: 16),
                Text(
                  AppText.userName,
                  style: AppFonts.size22Bold.copyWith(
                    color: AppColors.textWhite,
                  ),
                )
              ],
            ),
            const SizedBox(height: 36),
            const UserInformationRow(
              info: '+380983891691',
              title: AppText.phone,
            ),
            const UserInformationRow(
              info: 'Вiнниця',
              title: AppText.location,
            ),
            const SizedBox(height: 40),
            LongBlueButtonWidget(
              text: AppText.exed,
              onPressed: () => Get.toNamed(AppRouter.loginScreen),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget with infomation about user
class UserInformationRow extends BaseStatelessWidget {
  final String title;
  final String info;

  const UserInformationRow({
    required this.title,
    required this.info,
    Key? key,
  }) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppFonts.size14.copyWith(
              color: AppColors.textWhite,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            info,
            style: AppFonts.size18.copyWith(
              color: AppColors.textWhite,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            color: AppColors.cardBg,
            width: double.infinity,
            height: 2,
          ),
        ],
      ),
    );
  }
}

// User avatar
class UserImage extends StatelessWidget {
  const UserImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage(AppImages.userPhoto),
          radius: 45,
        ),
        AddUserPhotoButton(),
      ],
    );
  }
}

// Add photo button
class AddUserPhotoButton extends StatelessWidget {
  const AddUserPhotoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.all(Radius.circular(500)),
          ),
        ),
        GestureDetector(
          onTap: () => Get.toNamed(AppRouter.loginScreen),
          child: SvgPicture.asset(AppIcons.add),
        ),
      ],
    );
  }
}
