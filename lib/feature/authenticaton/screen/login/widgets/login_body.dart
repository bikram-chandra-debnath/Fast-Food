import 'package:fast_food/common/buttons/app_elevated_button.dart';
import 'package:fast_food/common/widgets/app_input_filed.dart';
import 'package:fast_food/feature/authenticaton/screen/login/widgets/warning_and_forget.dart';
import 'package:fast_food/feature/shop/screen/navigation_bar.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

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
          prefixIcon: Icon(Iconsax.direct_right),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields),
        // password
        AppInputField(
          obscureText: true,
          title: AppText.password,
          hintText: AppText.enterPassword,
          prefixIcon: Icon(Iconsax.password_check),
          ispassword: true,
        ),

        //warning & Forget password
        WarningAndForget(),
        SizedBox(height: AppSizes.spaceBtwSections),

        //Sign In Button
        AppElevatedButton(onPressed: ()=> Get.offAll(()=> AppNavigationBar()), child: Text(AppText.login)),

        SizedBox(height: AppSizes.spaceBtwSections),
      ],
    );
  }
}

