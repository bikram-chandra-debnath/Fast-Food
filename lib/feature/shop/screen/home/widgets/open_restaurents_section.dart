import 'package:fast_food/common/widgets/shop/section_heading.dart';
import 'package:fast_food/feature/shop/controller/open_restaurant_controller.dart';
import 'package:fast_food/feature/shop/screen/home/widgets/restaurent_view_card.dart';
import 'package:fast_food/feature/shop/screen/resturant/resturant_view_screen.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpenRestaurantSection extends StatelessWidget {
  const OpenRestaurantSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OpenRestaurantController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: Column(
        children: [
          AppSectionHeading(title: AppText.openRestaurants, onPressed: () {}),
          SizedBox(height: AppSizes.spaceBtwItems / 2),
          SizedBox(
            height: 240,
            child: GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder:
                  (BuildContext context, int index) => RestaurentViewCard(
                    onPressed:
                        () => Get.to(
                          () => RestaurentViewScreen(
                            menu: controller.openRestaurants[index]["menu"],
                            productList:
                                controller
                                    .openRestaurants[index]["menu"][index]["bugers"],
                            restaurantImage:
                                controller.openRestaurants[index]["image"],
                            restaurantName:
                                controller.openRestaurants[index]["title"],
                            restaurantDescription:
                                controller
                                    .openRestaurants[index]["description"],
                            rating:
                                controller.openRestaurants[index]["rate"]
                                    .toString(),
                            time:
                                controller.openRestaurants[index]["time"]
                                    .toString(),
                          ),
                        ),
                    title: controller.openRestaurants[index]["title"],
                    subtitle: controller.openRestaurants[index]["subtitle"],
                    time: controller.openRestaurants[index]["time"].toString(),
                    rating:
                        controller.openRestaurants[index]["rate"].toString(),
                    image: controller.openRestaurants[index]["image"],
                  ),

              itemCount: controller.openRestaurants.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                //childAspectRatio: 0.82,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
