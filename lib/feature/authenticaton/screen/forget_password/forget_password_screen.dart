import 'package:fast_food/common/buttons/app_elevated_button.dart';
import 'package:fast_food/common/widgets/app_input_filed.dart';
import 'package:fast_food/common/widgets/login&signup/authentication_title_and_subtitle.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: Column(
          children: [
            AuthenticationTitleAndSubtitle(
              title: AppText.forgetTitle,
              subTitle: AppText.forgetSubtitle,
            ),
            SizedBox(height: AppSizes.spaceBtwSections),
            AppInputField(
              title: AppText.email,
              hintText: AppText.enterEmail,
              prefixIcon: Icon(Iconsax.direct_right),
            ),
            SizedBox(height: AppSizes.spaceBtwItems),
            AppElevatedButton(onPressed: () {}, child: Text(AppText.submit)),
          ],
        ),
      ),
    );
  }
}
