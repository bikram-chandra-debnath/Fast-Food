
import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/common/widgets/profile/custom_list_tile.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';

class LogoutSection extends StatelessWidget {
  const LogoutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCustomRoundedContainer(
      child: AppCustomListTile(
        title: AppText.logout,
        leadingIcon: AppImage.logoutRed,
        ontap: () {},
      ),
    );
  }
}