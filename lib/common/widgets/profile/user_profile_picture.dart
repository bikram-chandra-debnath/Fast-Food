
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:flutter/material.dart';

class AppUserProfilePicture extends StatelessWidget {
  const AppUserProfilePicture({super.key, this.profilePicture});

  final String? profilePicture;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Color(0xffFFC6AE),
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(profilePicture ?? AppImage.defaultProfile),
        ),
      ),
    );
  }
}