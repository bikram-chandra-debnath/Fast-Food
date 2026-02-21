import 'package:fast_food/appbar/custom_appbar.dart';
import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/widgets/profile/profile_and_info.dart';
import 'package:fast_food/feature/shop/screen/profile/widgets/cart_to_payment_section.dart';
import 'package:fast_food/feature/shop/screen/profile/widgets/feedback_and_settings_section.dart';
import 'package:fast_food/feature/shop/screen/profile/widgets/logout_section.dart';
import 'package:fast_food/feature/shop/screen/profile/widgets/profile_info_section.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: AppCircularIconButton(
          icon: SvgPicture.asset(AppImage.arrowBack),
          onPressed: () => Get.back(),
          
        ),

        title: Text(
          AppText.profile,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [
          AppCircularIconButton(
            icon: SvgPicture.asset(AppImage.threeDot),
            onPressed: () {},
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(
          top: AppSizes.defaultSpace,
          left: AppSizes.defaultSpace,
          right: AppSizes.defaultSpace,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Profile Section
              AppUserProfilePictureAndInfo(
                userName: "Bikram Chandra Debnath",
                bio: 'I love fast food!',
              ),

              SizedBox(height: AppSizes.spaceBtwSections),

              // Profile info section

              ProfileInfoSection(),
              SizedBox(height: AppSizes.spaceBtwSections),

              // car, favorit,notifications and payment Section
              CartToPaymentSection(),
              SizedBox(height: AppSizes.spaceBtwSections),

              // FAQs, userReview and Settings section
              FeedBackAndSettingsSection(),
              SizedBox(height: AppSizes.spaceBtwSections),

              // logout Section
              LogoutSection(),
              SizedBox(height: AppSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}




