import 'package:fast_food/appbar/custom_appbar.dart';
import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/widgets/details%20and%20restaurant%20view/show_product_view.dart';
import 'package:fast_food/common/widgets/details%20and%20restaurant%20view/title_description_reating.dart';
import 'package:fast_food/common/widgets/shop/details_image_box.dart';
import 'package:fast_food/feature/shop/controller/details_controller.dart';
import 'package:fast_food/feature/shop/screen/resturant/widgets/restaurant_items.dart';
import 'package:fast_food/feature/shop/screen/resturant/widgets/search_filter.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class RestaurentViewScreen extends StatelessWidget {
  const RestaurentViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DetailsController());
    return Scaffold(
      // appbar
      appBar: CustomAppBar(
        leading: AppCircularIconButton(
          icon: SvgPicture.asset(AppImage.arrowBack),
          onPressed: () => Get.back(),
        ),
        title: Text(
          AppText.restaurantView,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [
          AppCircularIconButton(
            icon: SvgPicture.asset(AppImage.threeDot),
            onPressed: () {
              Get.dialog(barrierDismissible: false, SearchFilter());
            },
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --------[Upper section]-------
              SizedBox(height: AppSizes.spaceBtwSections),

              // Restaurant Image
              AppDetailsImageBox(image: "assets/restaurants/image.jpg"),
              SizedBox(height: AppSizes.spaceBtwSections),
              // Restaurant Details
              TitleDescriptionRating(
                title: "Spicy restaurant",
                description:
                    "Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.",
                reating: '4.7',
                time: '20',
              ),
              SizedBox(height: AppSizes.spaceBtwSections),
              //-------[Body]---------

              // Food Items
              RestaurantItems(),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Product title and Products
              ShowProductView(
                title: "Burger(5)",
                itemCount: 5,
                productName: "Burger Ferguson",
                restaurantName: "Spicy Restaurant",
                price: "44",
              ),
              SizedBox(height: AppSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
