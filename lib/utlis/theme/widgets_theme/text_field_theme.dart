import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class AppTextFieldThem{
  AppTextFieldThem._();

  static InputDecorationTheme lightInputDecorationThem=InputDecorationTheme(
  errorMaxLines: 3,
  prefixIconColor: AppColors.darkGrey,
  suffixIconColor: AppColors.darkGrey,

  //  constraints: const BoxConstraints.expand(height:AppSizes.inputFieldRadius),

  labelStyle: const TextStyle().copyWith(fontSize: AppSizes.fontSizemd,color: AppColors.black),
  hintStyle: const TextStyle().copyWith(fontSize: AppSizes.fontSizesm,color: AppColors.black),
  errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
  floatingLabelStyle: TextStyle().copyWith(color: AppColors.black.withValues(alpha: 0.4)),
  border: const OutlineInputBorder().copyWith(
    borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
    borderSide: BorderSide(width: 1,color: AppColors.grey),
  ),
  enabledBorder: const OutlineInputBorder().copyWith(
    borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
    borderSide: const BorderSide(width: 1,color: AppColors.grey),
  ),
  focusedBorder: const OutlineInputBorder().copyWith(
    borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
    borderSide: BorderSide(width: 1,color: AppColors.dark,)
  ),

  errorBorder: const OutlineInputBorder().copyWith(
    borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
    borderSide: BorderSide(width: 1,color: AppColors.warning,)
  ),
  focusedErrorBorder:  const OutlineInputBorder().copyWith(
    borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
    borderSide: BorderSide(width: 2,color: AppColors.warning,)
  ),

);
static InputDecorationTheme darkInputDecorationThem=InputDecorationTheme(
  errorMaxLines: 2,
  prefixIconColor: AppColors.darkGrey,
  suffixIconColor: AppColors.darkGrey,

  // constraints: const BoxConstraints.expand(height:AppSizes.inputFieldRadius),
  
  labelStyle: const TextStyle().copyWith(fontSize: AppSizes.fontSizemd,color: AppColors.white),
  hintStyle: const TextStyle().copyWith(fontSize: AppSizes.fontSizesm,color: AppColors.white),
  errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
  floatingLabelStyle: TextStyle().copyWith(color: AppColors.black.withValues(alpha: 0.4)),
  border: const OutlineInputBorder().copyWith(
    borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
    borderSide: BorderSide(width: 1,color: AppColors.darkGrey),
  ),
  enabledBorder: const OutlineInputBorder().copyWith(
    borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
    borderSide: const BorderSide(width: 1,color: AppColors.darkGrey),
  ),
  focusedBorder: const OutlineInputBorder().copyWith(
    borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
    borderSide: BorderSide(width: 1,color: AppColors.white,)
  ),

  errorBorder: const OutlineInputBorder().copyWith(
    borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
    borderSide: BorderSide(width: 1,color: AppColors.warning,)
  ),
  focusedErrorBorder:  const OutlineInputBorder().copyWith(
    borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
    borderSide: BorderSide(width: 2,color: AppColors.warning,)
  ),

);
  
}