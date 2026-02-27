import 'package:fast_food/common/buttons/app_elevated_button.dart';
import 'package:fast_food/common/widgets/app_input_filed.dart';
import 'package:fast_food/feature/authenticaton/screen/forget_password/verification_code.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/login&signup/authentication_header_container.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          // Header section
          CustomAutheticationHeaderContainer(
            isback: true,
            title: AppText.forgetTitle,
            subtitle: AppText.forgetSubtitle,
          ),

          // body section
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.defaultSpace,
            ),
            child: Column(
              children: [
                AppInputField(
                  title: AppText.email,
                  hintText: AppText.enterEmail,
                 
                ),
                SizedBox(height: AppSizes.spaceBtwItems),
                AppElevatedButton(
                  onPressed: () {
                    Get.to(() => VerificationCode());
                  },
                  child: Text(AppText.sendCode),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
