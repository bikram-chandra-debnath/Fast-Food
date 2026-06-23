import 'package:fast_food/common/paint/custom_container_paint.dart';
import 'package:fast_food/feature/shop/screen/cart/widgets/product_name_and_remove_button.dart';
import 'package:fast_food/feature/shop/screen/cart/widgets/product_size_and_quantity.dart';
import 'package:fast_food/feature/shop/screen/cart/widgets/totla_product_price.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({
    super.key,
    required this.itemName,
    required this.price,
    required this.itemSize,
    required this.itemQuantity,
    required this.image,
  });

  final String itemName, itemSize, image;
  final int price, itemQuantity;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SizedBox(
        height: 140,
        width: double.maxFinite,
        child: Row(
          children: [
            // Custom image show
            ProductImage(image: image),

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
  const ProductImage({super.key, required this.image});
  final String image;

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

          Positioned.fill(
            child: ClipPath(
              clipper: CustomContainerClipper(),
              child: Image.network(image, fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomContainerClipper extends CustomClipper<Path> {
  final double topWidth;

  CustomContainerClipper({this.topWidth = 130});

  @override
  Path getClip(Size size) {
    const double radius = 28.0;
    const double topRadius = radius - 5; // reduced top corners
    final double inset = (size.width - topWidth) / 2;

    final path =
        Path()
          ..moveTo(inset + topRadius, 0)
          ..lineTo(size.width - inset - topRadius, 0)
          ..quadraticBezierTo(
            size.width - inset,
            0,
            size.width - inset * 0.6,
            topRadius * 0.6,
          )
          ..lineTo(size.width, size.height - radius)
          ..quadraticBezierTo(
            size.width,
            size.height,
            size.width - radius,
            size.height,
          )
          ..lineTo(radius, size.height)
          ..quadraticBezierTo(0, size.height, 0, size.height - radius)
          ..lineTo(inset * 0.6, topRadius * 0.6)
          ..quadraticBezierTo(inset, 0, inset + topRadius, 0)
          ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
