import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../utlis/constrant/app_colors.dart';
import '../../../../utlis/constrant/app_image.dart';
import '../../controller/splash/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          // AppLogo
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(AppImage.logo, width: 122, height: 59),
          ),
          // yellow sun shape
          Positioned(
            bottom: 0,
            right: 0,
            child: FadeInUp(child: SvgPicture.asset(AppImage.yellowSun)),
          ),
          // silver sun shape
          Positioned(
            top: 0,
            left: 0,
            child: FadeInDown(child: SvgPicture.asset(AppImage.silverSun)),
          ),
        ],
      ),
    );
  }
}
