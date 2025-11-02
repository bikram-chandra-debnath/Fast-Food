import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:flutter/material.dart';

class AppSubTitle extends StatelessWidget {
  const AppSubTitle({
    super.key, required this.subTitle,  this.textAlign=TextAlign.left,
  });

final  String subTitle;
final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.fade,
      subTitle,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.darkGrey),
      textAlign: textAlign,
    );
  }
}