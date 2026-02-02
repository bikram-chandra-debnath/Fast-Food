import 'package:fast_food/common/buttons/app_elevated_button.dart';
import 'package:fast_food/common/widgets/app_subtitle.dart';
import 'package:fast_food/common/widgets/app_title.dart';
import 'package:fast_food/feature/authenticaton/screen/login/login_screen.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:fast_food/utlis/helper/device_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // images
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  AppImage.verifyEmail,
                  height: DeviceHelper.getScreenHeight(context) / 3,
                ),
              ],
            ),

            // title
            AppTitle(
              title: AppText.emailVerify,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(),
            ),
            SizedBox(height: AppSizes.spaceBtwItems),

            //subtitle
            AppSubTitle(subTitle: AppText.sendEmail),
            Text(
              "bikramnath83@gmail.com",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            AppSubTitle(subTitle: AppText.openMail),

            SizedBox(height: AppSizes.spaceBtwItems),

            // buttons
            AppElevatedButton(
              onPressed: () => Get.offAll(LoginScreen()),
              child: Text(AppText.done),
            ),
          ],
        ),
      ),
    );
  }
}
