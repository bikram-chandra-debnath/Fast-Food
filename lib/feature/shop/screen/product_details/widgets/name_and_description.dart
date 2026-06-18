
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:see_more_text/see_more_text.dart';

class NameAndDescription extends StatelessWidget {
  const NameAndDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Product name
        Text(
          "Pizza calzone european",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: AppSizes.spaceBtwItems / 2),
        // product description
        SeeMoreText(
          text:
              "Prosciutto e funghi is a pizza variety that is topped with tomato sauce.",
          maxLines: 3,
          seeLessText: "see less",
          seeMoreText: "see more",
          textStyle: Theme.of(context).textTheme.bodySmall,
          seeMoreLessTextStyle: Theme.of(
            context,
          ).textTheme.bodyLarge!.copyWith(color: AppColors.primary),
        ),
      ],
    );
  }
}
