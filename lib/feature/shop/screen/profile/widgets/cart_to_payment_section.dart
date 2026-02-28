
import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/common/widgets/profile/custom_list_tile.dart';
import 'package:fast_food/feature/shop/screen/cart/cart_screen.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartToPaymentSection extends StatelessWidget {
  const CartToPaymentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCustomRoundedContainer(
      child: Column(
        children: [
          AppCustomListTile(
            title: AppText.cart,
            leadingIcon: AppImage.cartBlue,
            ontap: () => Get.to(()=> CartScreen()),
          ),
          AppCustomListTile(
            title: AppText.favorite,
            leadingIcon: AppImage.heartPerpal,
            ontap: () {},
          ),
          AppCustomListTile(
            title: AppText.notifications,
            leadingIcon: AppImage.bellYellow,
            ontap: () {},
          ),
          AppCustomListTile(
            title: AppText.paymentMethod,
            leadingIcon: AppImage.paymentBlue,
            ontap: () {},
          ),
        ],
      ),
    );
  }
}
