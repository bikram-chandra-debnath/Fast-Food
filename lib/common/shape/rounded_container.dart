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
  });

  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: AppColors.containerBackground,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
