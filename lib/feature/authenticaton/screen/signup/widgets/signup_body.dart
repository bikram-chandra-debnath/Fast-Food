import 'package:fast_food/common/buttons/app_elevated_button.dart';
import 'package:fast_food/common/widgets/app_input_filed.dart';
import 'package:fast_food/feature/authenticaton/screen/forget_password/verify_email.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: AppInputField(
                title: AppText.firstName,
                hintText: AppText.enterFirstName,
                prefixIcon: Icon(Iconsax.user),
              ),
            ),
            SizedBox(width: AppSizes.spaceBtwInputFields,),
            Expanded(
              child: AppInputField(
                title: AppText.lastName,
                hintText: AppText.enterLastName,
                prefixIcon: Icon(Iconsax.user),
              ),
            ),

          ],
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields),
        AppInputField(
          title: AppText.phoneNumber,
          hintText: AppText.enterPhoneNumber,
          prefixIcon: Icon(Iconsax.call),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields),
        AppInputField(
          title: AppText.email,
          hintText: AppText.enterEmail,
          prefixIcon: Icon(Iconsax.direct_right),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields),
        AppInputField(
          ispassword: true,
          obscureText: true,
          title: AppText.password,
          hintText: AppText.enterPassword,
          prefixIcon: Icon(Iconsax.password_check),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields),
        AppInputField(
          ispassword: true,
          obscureText: true,
          title: AppText.confirmPassword,
          hintText: AppText.reTypePassword,
          prefixIcon: Icon(Iconsax.password_check),
        ),
        SizedBox(height: AppSizes.spaceBtwSections),

        // SignUp Button
        AppElevatedButton(
          onPressed: () => Get.to(() => VerifyEmail()),
          child: Text(AppText.signUp),
        ),
      ],
    );
  }
}
