import 'package:fast_food/feature/authenticaton/controller/onboarding/onboarding_coltroller.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SkipButton extends StatelessWidget {
  SkipButton({super.key});

  final controller = OnboardingColtroller.instance;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppSizes.appBarHeight * 0.8,
      right: AppSizes.defaultSpace,
      child: Obx(
        () => TextButton(
          onPressed: () => controller.skipPage(),
          // ignore: unrelated_type_equality_checks
          child:
              controller.currentIndex == 2
                  ? SizedBox()
                  : Text(
                    AppText.skip,

                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
        ),
      ),
    );
  }
}
