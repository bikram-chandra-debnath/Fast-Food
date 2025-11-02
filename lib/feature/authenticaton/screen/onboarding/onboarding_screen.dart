import 'package:fast_food/feature/authenticaton/controller/onboarding/onboarding_coltroller.dart';
import 'package:fast_food/feature/authenticaton/screen/onboarding/widgets/next_button.dart';
import 'package:fast_food/feature/authenticaton/screen/onboarding/widgets/onboarding_page.dart';
import 'package:fast_food/feature/authenticaton/screen/onboarding/widgets/page_indicator.dart';
import 'package:fast_food/feature/authenticaton/screen/onboarding/widgets/skip_button.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final controller = Get.put(OnboardingColtroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background image and title
          PageView(
            controller: controller.pageController,
            onPageChanged: (value) => controller.updatePageIndicator(value),
            children: [
              OnboardingPage(
                image: AppImage.onboarding1,
                title: AppText.onboarding1Title,
                subTitle: AppText.onboarding1Subtitle,
              ),
              OnboardingPage(
                image: AppImage.onboarding2,
                title: AppText.onboarding2Title,
                subTitle: AppText.onboarding2Subtitle,
              ),
              OnboardingPage(
                image: AppImage.onboarding3,
                title: AppText.onboarding3Title,
                subTitle: AppText.onboarding3Subtitle,
              ),
            ],
          ),

          // dot indicator
          PageIndicator(),

          // Button
          NextButton(),

          // skip
          SkipButton(),
        ],
      ),
    );
  }
}
