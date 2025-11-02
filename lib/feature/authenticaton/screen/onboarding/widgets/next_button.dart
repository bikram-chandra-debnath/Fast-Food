import 'package:fast_food/common/buttons/app_elevated_button.dart';
import 'package:fast_food/feature/authenticaton/controller/onboarding/onboarding_coltroller.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextButton extends StatelessWidget {
   NextButton({
    super.key,
  });
final controller = OnboardingColtroller.instance;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: AppSizes.defaultSpace,
      right: AppSizes.defaultSpace,
      child: AppElevatedButton(onPressed: () { 
        controller.nextPage();
       }, child: Obx(
         ()=> Text(
            // ignore: unrelated_type_equality_checks
            controller.currentIndex==2? AppText.getStarted: AppText.appContinue,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
       ),),
    );
  }
}
