import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({
    super.key, required this.title,  this.textAlign=TextAlign.left,
  });

  final String title;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.fade,
      title,
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.white),
      textAlign: textAlign,
    );
  }
}