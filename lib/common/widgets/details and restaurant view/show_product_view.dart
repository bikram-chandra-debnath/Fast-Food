import 'package:fast_food/common/widgets/details%20and%20restaurant%20view/show_product_card.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class ShowProductView extends StatelessWidget {
  const ShowProductView({
    super.key,

    required this.itemCount,
    required this.productName,
    required this.restaurantName,
    required this.price,
    required this.title,
  });
  final int itemCount;
  final String productName, restaurantName, price, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // upper title of product
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.displaySmall?.copyWith(fontSize: 20),
        ),

        SizedBox(height: AppSizes.spaceBtwItems),

        // main view of produc
        GridView.builder(
          itemCount: itemCount,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.84,
            crossAxisSpacing: AppSizes.spaceBtwItems,
          ),
          shrinkWrap: true,
          itemBuilder:
              (context, index) => ShowProductCard(
                productName: productName,
                restaurantName: restaurantName,
                price: price,
              ),
        ),
      ],
    );
  }
}
