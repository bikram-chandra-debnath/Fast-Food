import 'package:fast_food/feature/authenticaton/screen/forget_password/verify_email.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/buttons/app_elevated_button.dart';
import '../../../../common/widgets/login&signup/authentication_header_container.dart';
import '../../../../utlis/constrant/app_colors.dart';
import '../../../../utlis/constrant/app_text.dart';
import 'package:verification_code_field/verification_code_field.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // header section
          CustomAutheticationHeaderContainer(
            isback: true,
            title: AppText.verification,
            subtitle: AppText.verificationCode,
            child: Text(
              "example@gamil.com",
              style: Theme.of(
                context,
              ).textTheme.bodyLarge!.copyWith(color: AppColors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.defaultSpace,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Code"),

                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Resend ",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          TextSpan(
                            text: "in 00:30",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.spaceBtwItems / 2),

                // verification code field
                VerificationCodeField(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  filled: true,
                  fillColor: AppColors.grey,
                  tripleSeparated: true,
                  codeDigit: CodeDigit.four,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.darkGrey),
                  ),
                  textStyle: TextStyle(color: AppColors.black, fontSize: 24),
                ),

                SizedBox(height: AppSizes.spaceBtwSections),
                // button
                AppElevatedButton(
                  onPressed: () => Get.to(() => VerifyEmail()),
                  child: Text("Verify"),
                ),
                SizedBox(height: AppSizes.spaceBtwItems),
                TextButton(onPressed: () {}, child: Text(AppText.reSend)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
