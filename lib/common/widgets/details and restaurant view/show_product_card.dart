import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/widgets/shop/product_card.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ShowProductCard extends StatelessWidget {
  const ShowProductCard({
    super.key,
    this.onPressed,
    required this.productName,
    required this.restaurantName,
    required this.price,
  });

  final VoidCallback? onPressed;
  final String productName, restaurantName, price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,

      child: ProductCard(
        image: AppImage.burger,
        title: productName,
        description: restaurantName,
        child: Padding(
          padding: const EdgeInsets.only(right: AppSizes.defaultSpace / 1.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Product Price
              Text("\$$price", style: Theme.of(context).textTheme.titleLarge),

              // Add to cart button
              AppCircularIconButton(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                height: 30,
                width: 30,
                icon: Icon(Iconsax.add),
                color: AppColors.textWhite,
                backgroundColor: AppColors.primary,
                onPressed: () {
                  Get.snackbar(
                    "",
                    "Product Added to Cart",
                    titleText: Text(
                      "Successfull",
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(color: AppColors.buttonDone),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
