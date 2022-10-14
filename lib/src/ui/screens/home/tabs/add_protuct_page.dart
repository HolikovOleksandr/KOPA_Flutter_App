// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:kopa/resources/asset_pathes.dart';
import 'package:kopa/resources/colors.dart';
import 'package:kopa/resources/fonts.dart';
import 'package:kopa/src/core/base_widgets/base_statefull_widget.dart';

class AddProductPage extends BaseStatefulWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                'save'.tr,
                style: AppFonts.size14.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ),
            const SizedBox(width: 16),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TitleWidget(text: 'addPhoto', withInput: false),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                mainAxisSpacing: 8,
                children: const [
                  AddPhoto(),
                  AddPhoto(),
                  AddPhoto(),
                  AddPhoto(),
                  AddPhoto(),
                  AddPhoto(),
                  AddPhoto(),
                  AddPhoto(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
                child: TitleWidget(text: 'size', withInput: false),
              ),
              const ChangeProductSize(),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
                child: Column(
                  children: [
                    TitleWidget(text: 'model', withInput: true),
                    TitleWidget(text: 'material', withInput: true),
                    TitleWidget(text: 'description', withInput: true),
                    TitleWidget(text: 'price', withInput: true),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddPhoto extends StatelessWidget {
  const AddPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.textWhite,
          ),
          child: const Icon(Icons.photo_camera_outlined),
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  TitleWidget({
    Key? key,
    required this.text,
    required this.withInput,
    this.controller,
  }) : super(key: key);

  final String text;
  final bool withInput;

  dynamic controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                text.tr,
                style: AppFonts.size16.copyWith(
                  color: AppColors.textWhite,
                ),
              )
            ],
          ),
          withInput
              ? TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.primary,
                        width: 3,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.cardBg,
                        width: 2,
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class ChangeProductSize extends StatelessWidget {
  const ChangeProductSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.size.width,
      height: 233,
      color: AppColors.cardBg,
      child: Row(
        children: [
          const Spacer(),
          Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(AppIcons.lineSneaker),
              SvgPicture.asset(AppIcons.horizontalArrow),
            ],
          ),
          SvgPicture.asset(AppIcons.verticalArrow),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizePicer(
                doubleValue: true,
                sizeType: 'size',
                valueWidget: Text(
                  'countrySize'.tr,
                  style: AppFonts.size16.copyWith(
                    color: AppColors.textWhite,
                  ),
                ),
              ),
              SizePicer(
                doubleValue: false,
                sizeType: 'width',
                valueWidget: Text(
                  '39',
                  style: AppFonts.size16.copyWith(
                    color: AppColors.textWhite,
                  ),
                ),
              ),
              SizePicer(
                doubleValue: false,
                sizeType: 'height',
                valueWidget: Text(
                  '10',
                  style: AppFonts.size16.copyWith(
                    color: AppColors.textWhite,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class SizePicer extends StatelessWidget {
  const SizePicer({
    Key? key,
    required this.valueWidget,
    required this.sizeType,
    required this.doubleValue,
    this.secondValue,
  }) : super(key: key);

  final Widget valueWidget;
  final Widget? secondValue;
  final String sizeType;
  final bool doubleValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  sizeType.tr,
                  style: AppFonts.size16.copyWith(
                    color: AppColors.textWhite,
                  ),
                ),
              ),
              doubleValue
                  ? Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "39",
                          style: AppFonts.size16.copyWith(
                            color: AppColors.textWhite,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
              Container(
                width: 1,
                height: 16,
                color: AppColors.sneakerTexture,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: AppFonts.size16.copyWith(
                    color: AppColors.textWhite,
                  ),
                ),
                onPressed: () {},
                child: valueWidget,
              ),
            ],
          ),
          Container(
            width: 200,
            height: 1,
            color: AppColors.sneakerTexture,
          ),
        ],
      ),
    );
  }
}
