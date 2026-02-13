
import 'package:fast_food/common/widgets/shop/product_card.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class AppCategoriesCard extends StatelessWidget {
  const AppCategoriesCard({
    super.key,
    required this.title,
    required this.price,
    this.image,
  });

  final String title, price;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductCard(image: image, title: title, child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Starting ",
                    style: Theme.of(context).textTheme.bodyMedium),
                Text(price, style: Theme.of(context).textTheme.titleLarge),
              ],
            ),),

        SizedBox(height: AppSizes.spaceBtwSections,)
      ],
    );
  }
}
