import 'package:fast_food/common/buttons/app_elevated_button.dart';
import 'package:fast_food/common/widgets/app_input_filed.dart';
import 'package:fast_food/feature/authenticaton/screen/login/widgets/warning_and_forget.dart';
import 'package:fast_food/feature/shop/screen/home/home_screen.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // email
        AppInputField(
          title: AppText.email,
          hintText: AppText.enterEmail,
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields),
        // password
        AppInputField(
          obscureText: true,
          title: AppText.password,
          hintText: AppText.enterPassword,
          ispassword: true,
        ),

        //warning & Forget password
        WarningAndForget(),
        SizedBox(height: AppSizes.spaceBtwSections),

        //Sign In Button
        AppElevatedButton(onPressed: ()=> Get.offAll(()=> HomeScreen()), child: Text(AppText.login)),

        SizedBox(height: AppSizes.spaceBtwSections),
      ],
    );
  }
}

