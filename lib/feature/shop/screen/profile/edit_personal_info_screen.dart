
import 'package:fast_food/appbar/custom_appbar.dart';
import 'package:fast_food/common/buttons/app_elevated_button.dart';
import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/widgets/profile/user_profile_picture.dart';
import 'package:fast_food/feature/shop/screen/profile/widgets/edit_profile_inputfileld.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EditPersonalInfoScreen extends StatelessWidget {
  const EditPersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final name = TextEditingController(text: "Bikram Chandra Debnath");
    final email = TextEditingController(text: "bikramnath83@gmail.com");
    final phoneNumber = TextEditingController(text: "01943705332");
    final bio = TextEditingController(text: "I love fast food!");
    return Scaffold(
      appBar: CustomAppBar(
        leading: AppCircularIconButton(
          icon: SvgPicture.asset(AppImage.arrowBack),
          onPressed: () => Get.back(),
        ),
        title: Text(AppText.editProfile),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // profile with edit button
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 130,
                  width: 130,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: AppUserProfilePicture(),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: AppCircularIconButton(
                          onPressed: () {},
                          backgroundColor: AppColors.primary,
                          icon: SvgPicture.asset(AppImage.editWhite),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: AppSizes.spaceBtwSections),
              Column(
                children: [
                  // Full Name
                  EditProfileInputField(
                    controller: name,
                    title: AppText.fullNameCapital,
                  ),
                  SizedBox(height: AppSizes.spaceBtwInputFields),
                  // Email
                  EditProfileInputField(
                    controller: email,
                    title: AppText.emailCapital,
                  ),
                  SizedBox(height: AppSizes.spaceBtwInputFields),
                  // phone Number
                  EditProfileInputField(
                    controller: phoneNumber,
                    title: AppText.phoneNumberCapitla,
                  ),
                  SizedBox(height: AppSizes.spaceBtwInputFields),
                  // Bio
                  EditProfileInputField(
                    controller: bio,
                    title: AppText.bioCapital,
                    maxLines: 3,
                  ),
                  SizedBox(height: AppSizes.spaceBtwInputFields),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: AppElevatedButton(
          onPressed: () {},
          child: Text(AppText.saveCapital),
        ),
      ),
    );
  }
}
