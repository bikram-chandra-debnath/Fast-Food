import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/common/widgets/profile/custom_list_tile.dart';
import 'package:fast_food/feature/shop/screen/address/address_screen.dart';
import 'package:fast_food/feature/shop/screen/profile/widgets/personal_info_screen.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileInfoSection extends StatelessWidget {
  const ProfileInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCustomRoundedContainer(
      child: Column(
        children: [
          AppCustomListTile(
            title: AppText.personInfo,
            leadingIcon: AppImage.person,
            ontap: () => Get.to(() => PersonalInfo()),
          ),
          AppCustomListTile(
            title: AppText.address,
            leadingIcon: AppImage.address,
            ontap: () => Get.to(() => AddressScreen()),
          ),
        ],
      ),
    );
  }
}

