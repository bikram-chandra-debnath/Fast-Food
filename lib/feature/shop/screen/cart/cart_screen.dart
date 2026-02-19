import 'package:fast_food/appbar/custom_appbar.dart';
import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/feature/authenticaton/controller/cart/cart_controller.dart';
import 'package:fast_food/feature/shop/screen/cart/widgets/cart_product_card.dart';
import 'package:fast_food/feature/shop/screen/cart/widgets/custom_bottomsheet.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CartController());
    final controller = CartController.instance;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(
        leading: AppCircularIconButton(
          backgroundColor: AppColors.lightBlack,
          icon: SvgPicture.asset(AppImage.arrowBackWhite),
          onPressed: () => Get.back(),
        ),
        title: Text(
          AppText.cart,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.copyWith(color: AppColors.white),
        ),
        actions: [
          Obx(
            () => TextButton(
              onPressed: () => controller.isNotEdit.toggle(),
              child: Text(
                controller.isNotEdit.value
                    ? AppText.editItems
                    : AppText.doneCapital,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color:
                      controller.isNotEdit.value
                          ? AppColors.buttonOrange
                          : AppColors.buttonDone,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      controller.isNotEdit.value
                          ? AppColors.buttonOrange
                          : AppColors.buttonDone,
                ),
              ),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: AppSizes.spaceBtwSections / 2),

              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder:
                    (BuildContext context, int index) => CartProductCard(
                      itemName: 'Pizza Calzone Curopean',
                      itemQuantity: 1,
                      itemSize: 14,
                      price: 39,
                    ),
                separatorBuilder:
                    (BuildContext context, int index) =>
                        SizedBox(height: AppSizes.spaceBtwItems),
                itemCount: 5,
              ),
              SizedBox(height: 360),
            ],
          ),
        ),
      ),

      bottomSheet: AppCustomBottomSheet(),
    );
  }
}
