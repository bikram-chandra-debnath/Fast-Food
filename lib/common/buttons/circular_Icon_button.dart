import 'package:flutter/material.dart';

import '../../utlis/constrant/app_colors.dart';

class AppCircularIconButton extends StatelessWidget {
  const AppCircularIconButton({
    super.key,
    required this.icon,
    this.backgroundColor = AppColors.darkerGrey,
    this.color,
     this.onPressed,
    this.width = 45,
    this.height = 45,
    this.tapTargetSize,
    this.padding,
    this.minimumSize,  this.showBorder=false,
  });

  final Widget icon;
  final Color backgroundColor;
  final Color? color;
  final VoidCallback? onPressed;
  final double width, height;
  final EdgeInsetsGeometry? padding;
  final Size? minimumSize;
  final MaterialTapTargetSize? tapTargetSize;
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        minimumSize: minimumSize,
        padding: padding,

        backgroundColor: backgroundColor,
        fixedSize: Size(width, height),
        foregroundColor: color,
        tapTargetSize: tapTargetSize,
       side: BorderSide(width:showBorder? 1.5:0, color:showBorder?  AppColors.grey:Colors.transparent)
      ),
      onPressed: onPressed,
      icon: icon,
    );
  }
}
