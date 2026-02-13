
import 'package:fast_food/common/widgets/shop/rating.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class RestaurantCardH extends StatelessWidget {
  const RestaurantCardH({
    super.key,
    required this.image,
    required this.name,
    required this.raitng,
  });

  final String image, name, raitng;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border(bottom: BorderSide(width: 1, color: AppColors.grey)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 60,
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(AppSizes.sm),
            ),

            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.sm),
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: AppSizes.md),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: Theme.of(context).textTheme.bodyLarge),
              SizedBox(height: AppSizes.sm / 2),
              AppRating(rating: raitng),
            ],
          ),
        ],
      ),
    );
  }
}
