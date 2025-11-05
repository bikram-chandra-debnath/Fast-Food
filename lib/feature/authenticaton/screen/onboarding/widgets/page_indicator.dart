import 'package:fast_food/feature/authenticaton/controller/onboarding/onboarding_coltroller.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/helper/device_helper.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  PageIndicator({super.key});

  final controller = OnboardingColtroller.instance;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 120,
      left: DeviceHelper.getScreenWidth(context) / 2.5,
      right: DeviceHelper.getScreenWidth(context) / 2.5,

      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: (index) => controller.dotNavigationClick(index),
        count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 6.0,
          activeDotColor: AppColors.primary
        ),
      ),
    );
  }
}
