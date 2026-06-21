import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/widgets/shop/product_card.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ShowProductCard extends GetView {
  const ShowProductCard({
    super.key,
    this.onPressed,
    required this.productName,
    required this.restaurantName,
    required this.price,
    required this.productImage,
  });

  final VoidCallback? onPressed;
  final String productName, restaurantName, price, productImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,

      child: ProductCard(
        isNetworkImage: true,
        image: productImage,
        title: productName,
        description: restaurantName,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            // Product Price
            Text("\$$price", style: Theme.of(context).textTheme.titleLarge),

            // Add to cart button
            AppCircularIconButton(
              padding: EdgeInsets.zero,
              height: 30,
              width: 30,
              icon: const Icon(Iconsax.add, color: AppColors.textWhite),
              backgroundColor: AppColors.primary,
              onPressed: () {
                debugPrint("Cart Added");
              },
            ),
          ],
        ),
      ),
    );
  }
}
