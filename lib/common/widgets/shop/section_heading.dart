
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppSectionHeading extends StatelessWidget {
  const AppSectionHeading({
    super.key,
    required this.title,
    this.isAction = true,
    this.onPressed,
  });

  final String title;
  final bool isAction;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        isAction
            ? TextButton(
              onPressed: onPressed,
              child: Row(
                children: [
                  Text(
                    AppText.seeAll,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(width: AppSizes.spaceBtwItems / 2),
                  SvgPicture.asset("assets/icon/svg/arrow_forward.svg"),
                ],
              ),
            )
            : SizedBox(),
      ],
    );
  }
}
