
import 'package:fast_food/common/widgets/shop/section_heading.dart';
import 'package:fast_food/feature/shop/screen/home/widgets/restaurent_view_card.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';

class OpenRestaurantSection extends StatelessWidget {
  const OpenRestaurantSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: Column(
        children: [
          AppSectionHeading(title: AppText.openRestaurants, onPressed: () {}),
          SizedBox(height: AppSizes.spaceBtwItems / 2),
          SizedBox( 
            height:240*5,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder:
                  (BuildContext context, int index) => RestaurentViewCard(),
              separatorBuilder:
                  (BuildContext context, int index) =>
                      SizedBox(height: AppSizes.spaceBtwItems),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
