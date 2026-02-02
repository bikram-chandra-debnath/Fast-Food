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
    this.titleColor = AppColors.black,
    this.child = const SizedBox(),
  });

  final String title, subTitle;
  final bool isIcon;
  final Color titleColor;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppTitle(
          title: title,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: titleColor),
          textAlign: TextAlign.center,
        ),

        SizedBox(height: AppSizes.spaceBtwItems / 2),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.defaultSpace,
          ),
          child: AppSubTitle(subTitle: subTitle, textAlign: TextAlign.center),
        ),
        child,
      ],
    );
  }
}
