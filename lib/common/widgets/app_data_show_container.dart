import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class AppDataShowingContainer extends StatelessWidget {
  const AppDataShowingContainer({
    super.key,  this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 60,
     width: double.maxFinite,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(AppSizes.sm),
       color: AppColors.lightGrey,
     ),
        
     child: child
        );
  }
}