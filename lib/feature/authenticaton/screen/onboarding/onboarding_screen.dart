import 'package:fast_food/feature/authenticaton/screen/onboarding/widgets/onboarding_page.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:fast_food/utlis/helper/device_helper.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background image and title
          PageView(
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
          Positioned(
            bottom: 120,
            left: DeviceHelper.getScreenWidth(context) / 2.5,
            right: DeviceHelper.getScreenWidth(context) / 2.5,

            child: SmoothPageIndicator(
              controller: PageController(),
              count: 3,
              effect: ExpandingDotsEffect(
                dotHeight: 6.0,
                activeDotColor: AppColors.primary,
              ),
            ),
          ),

          // Button
          Positioned(
            bottom: 30,
            left: AppSizes.defaultSpace,
            right: AppSizes.defaultSpace,
            child: AppElevatedButton(),
          ),
        ],
      ),
    );
  }
}

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
        ),
        child: Text(
          AppText.appContinue,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
