import 'package:fast_food/appbar/custom_appbar.dart';
import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/buttons/text_button.dart';
import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/common/widgets/profile/custom_list_tile.dart';
import 'package:fast_food/common/widgets/profile/profile_and_info.dart';
import 'package:fast_food/feature/shop/screen/profile/edit_personal_info_screen.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: AppCircularIconButton(
          onPressed: () => Get.back(),
          icon: SvgPicture.asset(AppImage.arrowBack),
        ),
        title: Text(AppText.personInfo),
        actions: [
          CustomTextButton(
            onPressed: () => Get.to(() => EditPersonalInfoScreen()),
            text: AppText.editCapital,
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSizes.spaceBtwSections),
              AppUserProfilePictureAndInfo(
                bio: "I love fast food!",
                userName: 'Bikram Chandra Debnath',
              ),
              SizedBox(height: AppSizes.spaceBtwSections),

              AppCustomRoundedContainer(
                child: Column(
                  children: [
                    // full name
                    AppCustomListTile(
                      title: AppText.fullNameCapital,
                      leadingIcon: AppImage.person,
                      subtitle: Text(
                        "Bikram chandra Debnath",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      isTrailing: false,
                    ),
                    // user email
                    AppCustomListTile(
                      title: AppText.emailCapital,
                      leadingIcon: AppImage.emailBlue,
                      subtitle: Text(
                        "bikramnath02@gmail.com",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      isTrailing: false,
                    ),
                    // phone number
                    AppCustomListTile(
                      title: AppText.phoneNumberCapitla,
                      leadingIcon: AppImage.phoneBlue,
                      subtitle: Text(
                        "01943705332",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      isTrailing: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
