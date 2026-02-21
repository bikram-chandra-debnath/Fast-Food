
import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/common/widgets/profile/custom_list_tile.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';

class FeedBackAndSettingsSection extends StatelessWidget {
  const FeedBackAndSettingsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCustomRoundedContainer(
      child: Column(
        children: [
          AppCustomListTile(
            title: AppText.faqS,
            leadingIcon: AppImage.questionOrange,
            ontap: () {},
          ),
          AppCustomListTile(
            title: AppText.userReview,
            leadingIcon: AppImage.userReview,
            ontap: () {},
          ),
          AppCustomListTile(
            title: AppText.settings,
            leadingIcon: AppImage.settingsPerpal,
            ontap: () {},
          ),
        ],
      ),
    );
  }
}