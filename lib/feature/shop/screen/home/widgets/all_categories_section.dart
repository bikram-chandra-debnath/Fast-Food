
import 'package:fast_food/common/widgets/shop/section_heading.dart';
import 'package:fast_food/feature/shop/screen/home/widgets/categories_card.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';

class AllCategoriesSection extends StatelessWidget {
  const AllCategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: AppSectionHeading(
            title: AppText.allCategories,
            onPressed: () {},
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwItems/2),
          
        Container(
          height: 220,
          padding: EdgeInsets.only(left: AppSizes.defaultSpace),
          
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
          
           
          
            itemBuilder:
                (context, index) => AppCategoriesCard(
                  title: 'Burger',
                  price: '\$70',
                  image: AppImage.burger,
                ),
            separatorBuilder:
                (context, index) =>
                    SizedBox(width: AppSizes.spaceBtwItems),
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}

