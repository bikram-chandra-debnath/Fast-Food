import 'package:flutter/material.dart';

import '../../utlis/constrant/app_colors.dart';


class AppCircularIconButton extends StatelessWidget {
  const AppCircularIconButton({
    super.key,
    required this.icon,
    this.backgroundColor = AppColors.darkerGrey,
    this.color,
    required this.onPressed,
  });

  final Widget icon;
  final Color backgroundColor;
  final Color? color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: Size(45, 45),
        foregroundColor: color,
      ),
      onPressed: onPressed,
      icon: icon,
    );
  }
}
