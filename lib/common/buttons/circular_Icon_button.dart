import 'package:flutter/material.dart';

import '../../utlis/constrant/app_colors.dart';


class AppCircularIconButton extends StatelessWidget {
  const AppCircularIconButton({
    super.key,
    required this.icon,
    this.backgroundColor = AppColors.darkerGrey,
    this.color,
    required this.onPressed,  this.width=45,  this.height=45, this.tapTargetSize,
  });

  final Widget icon;
  final Color backgroundColor;
  final Color? color;
  final VoidCallback onPressed;
  final double width,height;
final MaterialTapTargetSize? tapTargetSize;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: Size(width, height),
        foregroundColor: color,
        tapTargetSize: tapTargetSize
      ),
      onPressed: onPressed,
      icon: icon,
    );
  }
}
