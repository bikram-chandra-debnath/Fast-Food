
import 'package:fast_food/common/widgets/shop/product_card.dart';
import 'package:fast_food/common/widgets/shop/section_heading.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';

class PopularFastFoodSection extends StatelessWidget {
  const PopularFastFoodSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionHeading(
          title: AppText.popularFastfood,
          isAction: false,
        ),
    
        SizedBox(height: AppSizes.spaceBtwSections / 1.5),
    
        SizedBox(
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.95,
              crossAxisSpacing: AppSizes.lg*1.5,
              mainAxisSpacing: AppSizes.md
            ),
            itemBuilder:
                (context, index) => ProductCard(
                  image: "assets/products/burger.png",
                  title: "European Burger",
                  description: "Uttora Coffe House",
                ),
          ),
        ),
    
        
      ],
    );
  }
}
