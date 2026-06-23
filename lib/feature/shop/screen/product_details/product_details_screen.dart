import 'package:fast_food/appbar/custom_appbar.dart';
import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/widgets/shop/rating_and_delivery_time.dart';
import 'package:fast_food/feature/shop/controller/details_controller.dart';
import 'package:fast_food/feature/shop/screen/product_details/widgets/image_and_favorite.dart'
    show ImageAndFavorite;
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
  const ProductDetailsScreen({
    super.key,
    required this.restaurantName,
    required this.productName,
    required this.productDescription,
    required this.rating,
    required this.time,
    required this.productPrice,
    required this.productImage,
    required this.productSize,
  });

  final String restaurantName,
      productName,
      productDescription,
      rating,
      time,
      productImage;
  final int productPrice;
  final List productSize;

  @override
  Widget build(BuildContext context) {
    final controller = DetailsController.instance;
    return Scaffold(
      appBar: CustomAppBar(
        leading: AppCircularIconButton(
          icon: SvgPicture.asset(AppImage.arrowBack),
          onPressed: () {
            Get.back();
            controller.quantity.value = 1;
          },
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
              ImageAndFavorite(productImage: productImage),
              SizedBox(height: AppSizes.spaceBtwSections),
              // restaurant name
              RestaurantName(restaurantName: restaurantName),
              SizedBox(height: AppSizes.spaceBtwSections / 2),
              NameAndDescription(
                productName: productName,
                productDescription: productName,
              ),
              SizedBox(height: AppSizes.spaceBtwItems),
              // rating
              RatingAndDeliveryTime(rating: rating, time: time),
              SizedBox(height: AppSizes.spaceBtwItems),
              // Size
              Sizes(productSize: productSize),
              SizedBox(height: AppSizes.spaceBtwItems),
              // Ingrident
              Ingradents(),
            ],
          ),
        ),
      ),
      bottomSheet: TotalPriceAndCart(productPrice: productPrice),
    );
  }
}
