import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:flutter/material.dart';

class TotlaPoductPrice extends StatelessWidget {
  const TotlaPoductPrice({super.key, required this.price});

  final int price;

  @override
  Widget build(BuildContext context) {
    return Text(
      "\$ $price",
      style: Theme.of(
        context,
      ).textTheme.headlineMedium!.copyWith(color: AppColors.textWhite),
    );
  }
}
