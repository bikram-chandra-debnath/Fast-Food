import 'package:fast_food/common/widgets/details%20and%20restaurant%20view/show_product_card.dart';
import 'package:fast_food/feature/shop/screen/product_details/product_details_screen.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowProductView extends StatelessWidget {
  const ShowProductView({
    super.key,
    required this.productList,
    this.iscategory = true,
  });
  final List productList;
  final bool iscategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // upper title of product
        iscategory
            ? Text(
              "Burgers",
              style: Theme.of(
                context,
              ).textTheme.displaySmall?.copyWith(fontSize: 20),
            )
            : SizedBox(),

        SizedBox(height: AppSizes.spaceBtwItems),

        // main view of produc
        GridView.builder(
          itemCount: productList.length,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.85,
            crossAxisSpacing: AppSizes.spaceBtwItems,
          ),
          shrinkWrap: true,
          itemBuilder:
              (context, index) => ShowProductCard(
                onPressed:
                    () => Get.to(
                      () => ProductDetailsScreen(
                        restaurantName: productList[index]["restaurant"],
                        productName: productList[index]["name"],
                        productDescription: productList[index]["description"],
                        rating: productList[index]["rate"].toString(),
                        time: productList[index]["time"].toString(),
                        productPrice: productList[index]["price"],
                        productImage: productList[index]["image"],
                        productSize: productList[index]["Size"],
                      ),
                    ),
                productName: productList[index]["name"],
                restaurantName: productList[index]["restaurant"],
                price: productList[index]["price"].toString(),
                productImage: productList[index]["image"],
              ),
        ),
      ],
    );
  }
}
