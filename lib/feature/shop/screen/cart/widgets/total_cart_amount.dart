import 'package:fast_food/feature/authenticaton/controller/cart/cart_controller.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TotalCartAmount extends StatelessWidget {
  const TotalCartAmount({super.key, });


  @override
  Widget build(BuildContext context) {
    final controller = CartController.instance;
    return Row(
      children: [
        Text(
          AppText.totalCapital,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Obx(
          () => Text(
            "\$${controller.totalPrice.value}",
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ],
    );
  }
}
