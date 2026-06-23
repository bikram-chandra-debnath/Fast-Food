import 'package:fast_food/common/widgets/shop/section_heading.dart';
import 'package:fast_food/feature/shop/controller/category_controller.dart';
import 'package:fast_food/feature/shop/screen/all_categroy/all_category_screen.dart';
import 'package:fast_food/feature/shop/screen/home/widgets/categories_card.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllCategoriesSection extends StatelessWidget {
  const AllCategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return Column(
      children: [
        //
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.defaultSpace,
          ),
          child: AppSectionHeading(
            title: AppText.allCategories,
            onPressed: () => Get.to(() => AllCategoryScreen()),
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwItems / 2),

        Container(
          height: 220,
          padding: EdgeInsets.only(left: AppSizes.defaultSpace),

          decoration: BoxDecoration(color: Colors.transparent),

          child: ListView.separated(
            scrollDirection: Axis.horizontal,

            itemBuilder:
                (context, index) => GestureDetector(
                  onTap: () => Get.to(() => AllCategoryScreen()),
                  child: AppCategoriesCard(
                    title: controller.category[index]["title"],
                    price: '\$${controller.category[index]["start"]}',
                    image: controller.category[index]["image"],
                  ),
                ),
            separatorBuilder:
                (context, index) => SizedBox(width: AppSizes.spaceBtwItems),
            itemCount: controller.category.length,
          ),
        ),
      ],
    );
  }
}
