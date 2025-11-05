import 'package:fast_food/common/widgets/login&signup/login&signup_lable.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login_screen.dart';

class SignupFooter extends StatelessWidget {
  const SignupFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Check box
            Checkbox(value: false, onChanged: (value) {}),

            // terms and condition
            TermAndCondition(),
          ],
        ),
        SizedBox(height:AppSizes.spaceBtwSections,),
        // old accoun Login 
        SignUpOrSignIn(
          label: AppText.alreadyHave,
          buttonName: AppText.signIn,
          onPressed: () {
            Get.to(LoginScreen());
          },
        ),
      ],
    );
  }
}

class TermAndCondition extends StatelessWidget {
  const TermAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.defaultSpace / 2,
        ),
        child: RichText(
          softWrap: true,
          overflow: TextOverflow.visible,
          text: TextSpan(
            children: [
              TextSpan(
                text: AppText.byCreating,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextSpan(
                recognizer: TapGestureRecognizer(),
                text: AppText.terms,
    
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.primary,
                ),
              ),
              TextSpan(
                text: AppText.and,
    
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextSpan(
                text: AppText.privacyNotice,
    
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

