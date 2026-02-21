
import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/common/widgets/profile/custom_list_tile.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';

class ProfileInfoSection extends StatelessWidget {
  const ProfileInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCustomRoundedContainer(
      child: Column(
        children: [
          AppCustomListTile(
            title: AppText.personInfo,
            leadingIcon: AppImage.person,
            ontap: () {},
          ),
          AppCustomListTile(
            title: AppText.address,
            leadingIcon: AppImage.address,
            ontap: () {},
          ),
        ],
      ),
    );
  }
}

