import 'package:fast_food/common/widgets/profile/user_profile_picture.dart';
import 'package:fast_food/common/widgets/profile/user_name_and_bio.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class AppUserProfilePictureAndInfo extends StatelessWidget {
  const AppUserProfilePictureAndInfo({
    super.key,
    required this.userName,
    required this.bio,
  });

  final String userName, bio;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppUserProfilePicture(),

          SizedBox(width: AppSizes.spaceBtwSections),
          UserNameAndBio(userName: userName, bio: bio),
        ],
      ),
    );
  }
}