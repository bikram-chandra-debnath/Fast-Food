import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:flutter/material.dart';

class AppChipTheme{
  AppChipTheme._();


  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: AppColors.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: AppColors.black),
    selectedColor: AppColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
    checkmarkColor: AppColors.white,
  );
  static ChipThemeData darkChipTheme = ChipThemeData(
     disabledColor: AppColors.darkerGrey,
    labelStyle: const TextStyle(color: AppColors.white),
    selectedColor: AppColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
    checkmarkColor: AppColors.white,
  );
}