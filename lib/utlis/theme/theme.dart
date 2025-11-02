import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/theme/widgets_theme/elevated_button_theme.dart';
import 'package:fast_food/utlis/theme/widgets_theme/out.ined_button_theme.dart';
import 'package:fast_food/utlis/theme/widgets_theme/text_field_theme.dart';
import 'package:fast_food/utlis/theme/widgets_theme/appbar_theme.dart';
import 'package:fast_food/utlis/theme/widgets_theme/bottom_sheet_theme.dart';
import 'package:fast_food/utlis/theme/widgets_theme/checkbox_theme.dart';
import 'package:fast_food/utlis/theme/widgets_theme/chip_theme.dart';
import 'package:fast_food/utlis/theme/widgets_theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme{
  AppTheme._();

  
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    disabledColor: AppColors.grey,
    scaffoldBackgroundColor: AppColors.white,
    textTheme: AppTextTheme.lightTextTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    checkboxTheme: AppChekboxThem.lightCheckboxThem,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: AppTextFieldThem.lightInputDecorationThem,

  );

  // Dark Theme

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    disabledColor: AppColors.grey,
    scaffoldBackgroundColor: AppColors.black,
    textTheme: AppTextTheme.darkTextTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    checkboxTheme: AppChekboxThem.darkCheckboxThem,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: AppTextFieldThem.darkInputDecorationThem,
  );
}