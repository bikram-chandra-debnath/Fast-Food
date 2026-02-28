import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ShowMap extends StatelessWidget {
  const ShowMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.maxFinite,
      decoration: BoxDecoration(color: AppColors.darkGrey),
      child: Stack(
        children: [
          Positioned(
            top: AppSizes.spaceBtwSections * 2,
            left: AppSizes.spaceBtwSections,

            child: AppCircularIconButton(
              icon: SvgPicture.asset(AppImage.arrowBackWhite),
              onPressed: () => Get.back(),
              backgroundColor: AppColors.black,
            ),
          ),
          Center(
            // google api ouput code here
          ),
        ],
      ),
    );
  }
}
