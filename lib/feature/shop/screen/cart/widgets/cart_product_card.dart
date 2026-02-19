import 'package:fast_food/common/paint/custom_container_paint.dart';
import 'package:fast_food/feature/shop/screen/cart/widgets/product_name_and_remove_button.dart';
import 'package:fast_food/feature/shop/screen/cart/widgets/product_size_and_quantity.dart';
import 'package:fast_food/feature/shop/screen/cart/widgets/totla_product_price.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({
    super.key,
    required this.itemName,
    required this.price,
    required this.itemSize,
    required this.itemQuantity,
  });

  final String itemName;
  final int price, itemSize, itemQuantity;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SizedBox(
        height: 140,
        width: double.maxFinite,
        child: Row(
          children: [
            // Custom image show
            ProductImage(),

            SizedBox(width: AppSizes.spaceBtwItems),

            //
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // title and remove button
                  CartProductNameAndRemove(itemName: itemName),

                  // Product total price
                  TotlaPoductPrice(price: price),

                  // Size and quantity
                  CartProductSizeAndQuantity(
                    itemSize: itemSize,
                    itemQuantity: itemQuantity,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 117,
      width: 136,
      child: Stack(
        children: [
          CustomPaint(
            size: const Size(136, 117),
            painter: CustomContainerPaint(
              topWidth: 116,

              fillColor: AppColors.lightBlack,
              shadowColor: Colors.transparent,
            ),
          ),

          Positioned(
            bottom: 0,
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(AppImage.burger),
          ),
        ],
      ),
    );
  }
}
