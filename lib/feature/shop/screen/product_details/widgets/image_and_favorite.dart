
import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ImageAndFavorite extends StatelessWidget {
  const ImageAndFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppCustomRoundedContainer(
          margin: EdgeInsets.only(top: AppSizes.defaultSpace * 1.5),
          height: 184,
          width: double.maxFinite,
          padding: EdgeInsetsGeometry.zero,
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
            child: Image.network(
              "https://t4.ftcdn.net/jpg/02/74/99/01/240_F_274990113_ffVRBygLkLCZAATF9lWymzE6bItMVuH1.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),

        Positioned(
          bottom: 10,
          right: 10,
          child: AppCircularIconButton(
            icon: Icon(Iconsax.heart, color: Colors.white),
            backgroundColor: AppColors.darkGrey.withValues(alpha: 0.4),
          ),
        ),
      ],
    );
  }
}
