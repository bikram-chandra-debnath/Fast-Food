import 'package:fast_food/appbar/custom_appbar.dart';
import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/widgets/shop/rating_and_delivery_time.dart';
import 'package:fast_food/feature/shop/screen/product_details/widgets/image_and_favorite.dart' show ImageAndFavorite;
import 'package:fast_food/feature/shop/screen/product_details/widgets/ingradent.dart';
import 'package:fast_food/feature/shop/screen/product_details/widgets/name_and_description.dart';
import 'package:fast_food/feature/shop/screen/product_details/widgets/restaurant_name.dart';
import 'package:fast_food/feature/shop/screen/product_details/widgets/size.dart';
import 'package:fast_food/feature/shop/screen/product_details/widgets/total_price_and_cart.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: AppCircularIconButton(
          icon: SvgPicture.asset(AppImage.arrowBack),
          onPressed: () => Get.back(),
        ),
        title: Text(
          AppText.details,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: AppSizes.defaultSpace,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageAndFavorite(),
              SizedBox(height: AppSizes.spaceBtwSections),
              // restaurant name
              RestaurantName(),
              SizedBox(height: AppSizes.spaceBtwSections / 2),
              NameAndDescription(),
              SizedBox(height: AppSizes.spaceBtwItems),
              // rating
              RatingAndDeliveryTime(reating: "4.5", time: "20"),
              SizedBox(height: AppSizes.spaceBtwItems),
              // Size
              Sizes(),
              SizedBox(height: AppSizes.spaceBtwItems),
              // Ingrident
              Ingradents(),
            ],
          ),
        ),
      ),
      bottomSheet: TotalPriceAndCart(),
    );
  }
}





