
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RatingAndDeliveryTime extends StatelessWidget {
  const RatingAndDeliveryTime({
    super.key,
    required this.reating,
    this.deliveryCharge = "Free",
    required this.time,
  });

  final String reating, deliveryCharge, time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            SvgPicture.asset("assets/icon/svg/star.svg", fit: BoxFit.cover),
            SizedBox(width: 5),
            Text(reating, style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
        SizedBox(width: AppSizes.spaceBtwItems),
        Row(
          children: [
            SvgPicture.asset("assets/icon/svg/delivery.svg", fit: BoxFit.cover),
            SizedBox(width: 5),
            Text(deliveryCharge, style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
        SizedBox(width: AppSizes.spaceBtwItems),
        Row(
          children: [
            SvgPicture.asset("assets/icon/svg/time.svg", fit: BoxFit.cover),
            SizedBox(width: 5),
            Text("$time min", style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
      ],
    );
  }
}
