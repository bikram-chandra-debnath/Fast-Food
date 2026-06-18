import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:flutter/material.dart';

class RestaurantName extends StatelessWidget {
  const RestaurantName({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCustomRoundedContainer(
      borderRadius: 50,
      height: 50,
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 10),
      border: Border.all(width: 1, color: AppColors.darkGrey),
      backgroundColor: Colors.transparent,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // SvgPicture.asset(
          //   "assets/icon/svg/restaurant.svg",
          //   fit: BoxFit.contain,
          // ),
          Text("Uttora Coffe House"),
        ],
      ),
    );
  }
}
