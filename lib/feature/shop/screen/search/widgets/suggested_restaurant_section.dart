
import 'package:fast_food/common/widgets/shop/section_heading.dart';
import 'package:fast_food/feature/shop/screen/search/widgets/restaurant_card_horizontal.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';

class SuggestedRestaurantSection extends StatelessWidget {
  const SuggestedRestaurantSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionHeading(
          title: AppText.suggestedRestaurants,
          isAction: false,
        ),
        SizedBox(height: AppSizes.spaceBtwItems),
    
        SizedBox(
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder:
                (context, index) => RestaurantCardH(
                  image: "assets/restaurants/image.jpg",
                  name: "Pansi Restaurant",
                  raitng: '4.7',
                ), separatorBuilder: (BuildContext context, int index) =>SizedBox(height: AppSizes.md,),
          ),
        ),
      ],
    );
  }
}
