
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class KeywordCard extends StatelessWidget {
  const KeywordCard({super.key, required this.keyWord});

  final String keyWord;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.md,
        vertical: AppSizes.md / 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(width: 1.5, color: AppColors.grey),
      ),
      child: Center(
        child: Text(keyWord, style: Theme.of(context).textTheme.bodyLarge),
      ),
    );
  }
}
