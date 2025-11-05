import 'package:fast_food/common/widgets/login&signup/login&signup_lable.dart';
import 'package:fast_food/feature/authenticaton/screen/login&signup/signup_screen.dart';
import 'package:fast_food/feature/authenticaton/screen/login&signup/widgets/social_login.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Divider(indent: 5, endIndent: 10, thickness: 0.5)),
            Text(
              AppText.orContinue,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
            Expanded(child: Divider(indent: 10, endIndent: 5, thickness: 0.5)),
          ],
        ),
        SizedBox(height: AppSizes.spaceBtwItems),

        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // social buttons
            SocialLogin(),

            SizedBox(height: AppSizes.spaceBtwSections),

            // Account Sign up
            SignUpOrSignIn(label: AppText.donotHaveAccount, buttonName: AppText.signUp, onPressed: () { 
              Get.to(SignupScreen());
             },),
          ],
        ),
      ],
    );
  }
}

