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
  const RestaurentViewScreen({
    super.key,
    required this.menu,
    required this.productList,
    required this.restaurantImage,
    required this.restaurantName,
    required this.restaurantDescription,
    required this.rating,
    required this.time,
  });
  final List menu;
  final List productList;

  final String restaurantImage,
      restaurantName,
      restaurantDescription,
      rating,
      time;

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
              AppDetailsImageBox(image: restaurantImage),
              SizedBox(height: AppSizes.spaceBtwSections),
              // Restaurant Details
              TitleDescriptionRating(
                title: restaurantName,
                description: restaurantDescription,
                reating: rating,
                time: time,
              ),
              SizedBox(height: AppSizes.spaceBtwSections),
              //-------[Body]---------

              // Food Items
              RestaurantItems(menu: menu),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Product title and Products
              ShowProductView(productList: productList),
              SizedBox(height: AppSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
