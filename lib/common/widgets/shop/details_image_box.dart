
import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class AppDetailsImageBox extends StatelessWidget {
  const AppDetailsImageBox({
    super.key,  this.height=140,  this.width=double.maxFinite, required this.image,
  });

  final double height, width;
  final String image;

  @override
  Widget build(BuildContext context) {
    return AppCustomRoundedContainer(
      padding: EdgeInsets.zero,
      height: height,
      width: width,
     
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.md)),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
