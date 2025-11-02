import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class AppChekboxThem{
  AppChekboxThem._();

   static CheckboxThemeData lightCheckboxThem = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.xs),
    ),
    checkColor:  WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return AppColors.white;
      }else {
        return AppColors.black;
      }
    },
    ),

    fillColor:  WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return AppColors.primary;
      }else{
        return Colors.transparent;
      }
    },)
    
    );
  static CheckboxThemeData darkCheckboxThem=CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.xs),
    ),
    checkColor:  WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return AppColors.white;
      }else {
        return AppColors.black;
      }
    },
    ),

    fillColor:  WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return AppColors.primary;
      }else{
        return Colors.transparent;
      }
    },)
  );
}