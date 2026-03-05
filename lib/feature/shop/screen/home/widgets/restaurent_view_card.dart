

import 'package:fast_food/common/widgets/shop/details_image_box.dart';
import 'package:fast_food/common/widgets/shop/rating_and_delivery_time.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class RestaurentViewCard extends StatelessWidget {
  const RestaurentViewCard({super.key, this.onPressed});
final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 225,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(AppSizes.md),
          boxShadow: [
            BoxShadow(
          color: Colors.grey.withValues(alpha: 0.1),
          spreadRadius: 2, 
          blurRadius: 5,  
          offset: Offset(0, 3), 
        ),
      
      
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDetailsImageBox(image: "assets/restaurants/image.jpg",),
            SizedBox(height: AppSizes.spaceBtwItems / 2),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.spaceBtwItems/2),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
              Text(
                "Rose Garden Restaurants",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: AppSizes.spaceBtwItems / 4),
              Text(
                "Burger - Chiken - Riche - Wings",
                style: Theme.of(
                  context,
                ).textTheme.bodySmall!.copyWith(fontSize: 12),
              ),
        
              SizedBox(height: AppSizes.spaceBtwItems / 2),
        
              // Rating , Delivery charge and time
              RatingAndDeliveryTime(reating: '4.5', time: '20'),
      ],
        ),
      )
          ],
        ),
      ),
    );
  }
}
