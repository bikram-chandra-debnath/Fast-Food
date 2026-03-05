import 'package:fast_food/common/widgets/shop/rating_and_delivery_time.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:see_more_text/see_more_text.dart';

class TitleDescriptionRating extends StatelessWidget {
  const TitleDescriptionRating({
    super.key,
    required this.title,
    required this.description,
    required this.reating,
    this.deliveryCharge = "Free",
    required this.time,
  });

  final String title, description, reating, deliveryCharge, time;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Restaurant name
        Text(title, style: Theme.of(context).textTheme.headlineMedium),
        SizedBox(height: AppSizes.spaceBtwItems / 2),

        // Restaurant Description
        SeeMoreText(
          text: description,
          textStyle: Theme.of(context).textTheme.bodySmall,
          maxLines: 3,
          seeMoreText: "See more",
          seeLessText: "See less",
          seeMoreLessTextStyle: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(height: AppSizes.spaceBtwItems),
// Ratings and Delivery info
        RatingAndDeliveryTime(
          reating: reating,
          time: time,
          deliveryCharge: deliveryCharge,
        ),
      ],
    );
  }
}
