import 'package:fast_food/common/widgets/app_subtitle.dart';
import 'package:fast_food/common/widgets/app_title.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class AuthenticationTitleAndSubtitle extends StatelessWidget {
  const AuthenticationTitleAndSubtitle({
    super.key,
    required this.title,
    required this.subTitle,
    this.isIcon = false,
  });

  final String title, subTitle;
  final bool isIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            AppTitle(
              title: title,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(),
            ),
            SizedBox(width: AppSizes.spaceBtwItems),
            isIcon == true
                ? Icon(Icons.waving_hand, color: AppColors.warning)
                : SizedBox(),
          ],
        ),
        SizedBox(height: AppSizes.spaceBtwItems),
        AppSubTitle(subTitle: subTitle),
      ],
    );
  }
}
