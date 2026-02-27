
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppCircularIconContainer extends StatelessWidget {
  const AppCircularIconContainer({
    super.key,
    required this.icon,
    this.height = 40,
    this.width = 40,
    this.color = AppColors.white,
    this.shape = BoxShape.circle,
    this.padding = const EdgeInsets.all(AppSizes.sm * 1.5),
  });

  final String icon;

  final double height, width;
  final Color color;
  final BoxShape shape;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: height,
      width: width,
      decoration: BoxDecoration(color: color, shape: shape),
      child: SvgPicture.asset(icon),
    );
  }
}