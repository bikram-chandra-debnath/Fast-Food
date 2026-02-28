
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class AppRoundedButton extends StatelessWidget {
  const AppRoundedButton ({super.key, required this.keyWord,  this.showBorder= true, this.backgroundColor, required this.onPressed, this.color});

  final String keyWord;
  final bool showBorder;
  final Color? backgroundColor, color;
  final VoidCallback onPressed;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.md*1.5,
          vertical: AppSizes.md / 1.5,
        ),
        decoration: BoxDecoration(
          color: backgroundColor?? Colors.transparent,
          borderRadius: BorderRadius.circular(100),
          border: showBorder? Border.all(width: 1.5, color: AppColors.grey): null,
        ),
        child: Center(
          child: Text(keyWord, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: color)),
        ),
      ),
    );
  }
}
