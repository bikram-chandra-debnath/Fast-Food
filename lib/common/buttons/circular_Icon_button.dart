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
    this.padding,  
    this.showBorder=false,
  });

  final Widget icon;
  final Color backgroundColor;
  final Color? color;
  final VoidCallback? onPressed;
  final double width, height;
  final EdgeInsetsGeometry? padding;
  final bool showBorder;
  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: onPressed,
      child: Container( 
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
          border: Border.all(width:showBorder? 1.5:0, color:showBorder?  AppColors.grey:Colors.transparent), 
        ),
        child: Center(child: icon,),
      ),
    );
    
  }
}
