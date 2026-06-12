import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class AppCustomRoundedContainer extends StatelessWidget {
  const AppCustomRoundedContainer({
    super.key,
    this.padding = const EdgeInsets.only(
      top: AppSizes.defaultSpace / 2,
      bottom: AppSizes.defaultSpace / 2,
      left: AppSizes.defaultSpace / 2,
    ),
    this.borderRadius = AppSizes.md,
    this.child,
    this.height,
    this.width,
    this.backgroundColor = AppColors.containerBackground,
    this.margin,
  });

  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;
  final double borderRadius;
  final Widget? child;
  final double? height, width;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
