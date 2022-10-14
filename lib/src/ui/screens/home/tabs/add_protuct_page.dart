// ignore_for_file: must_be_immutable

import 'package:kopa/src/core/base_widgets/base_statefull_widget.dart';
import 'package:kopa/resources/colors.dart';
import 'package:kopa/resources/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              TitleWidget(
                text: 'addPhoto',
                withInput: false,
              ),
              const SizedBox(height: 38),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                mainAxisSpacing: 8,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.textWhite,
                      ),
                      child: const Icon(Icons.photo_camera_outlined),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.textWhite,
                      ),
                      child: const Icon(Icons.photo_camera_outlined),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.textWhite,
                      ),
                      child: const Icon(Icons.photo_camera_outlined),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.textWhite,
                      ),
                      child: const Icon(Icons.photo_camera_outlined),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.textWhite,
                      ),
                      child: const Icon(Icons.photo_camera_outlined),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.textWhite,
                      ),
                      child: const Icon(Icons.photo_camera_outlined),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.textWhite,
                      ),
                      child: const Icon(Icons.photo_camera_outlined),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.textWhite,
                      ),
                      child: const Icon(Icons.photo_camera_outlined),
                    ),
                  ),
                ],
              ),
              TitleWidget(text: 'model', withInput: true),
              TitleWidget(text: 'material', withInput: true),
              TitleWidget(text: 'description', withInput: true),
              TitleWidget(text: 'price', withInput: true),
            ],
          ),
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
    return Column(
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
            ? Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: TextField(
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
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
