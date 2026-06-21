import 'package:fast_food/common/buttons/app_elevated_button.dart';
import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/feature/shop/controller/details_controller.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TotalPriceAndCart extends StatelessWidget {
  const TotalPriceAndCart({super.key, required this.productPrice});
  final int productPrice;

  @override
  Widget build(BuildContext context) {
    final controller = DetailsController.instance;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.defaultSpace,
        vertical: AppSizes.defaultSpace,
      ),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.background2,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "\$${(controller.quantity.value) * productPrice}",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              AppCustomRoundedContainer(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: AppSizes.md,
                  vertical: AppSizes.sm * 1.5,
                ),
                borderRadius: 50,
                backgroundColor: AppColors.background,
                child: Center(
                  child: Row(
                    children: [
                      // Decrease Quantity
                      AppCircularIconButton(
                        onPressed: () => controller.decreaseQuantity(),
                        backgroundColor: AppColors.darkGrey.withValues(
                          alpha: 0.5,
                        ),
                        height: 25,
                        width: 25,
                        icon: Icon(Iconsax.minus, color: AppColors.white),
                      ),
                      SizedBox(width: AppSizes.md),
                      // Quantity
                      Obx(
                        () => Text(
                          controller.quantity.value.toString(),
                          style: Theme.of(context).textTheme.bodyLarge!
                              .copyWith(color: AppColors.textWhite),
                        ),
                      ),
                      SizedBox(width: AppSizes.md),
                      // Increase Quantity
                      AppCircularIconButton(
                        onPressed: () => controller.increaseQuantity(),
                        backgroundColor: AppColors.darkGrey.withValues(
                          alpha: 0.5,
                        ),
                        height: 25,
                        width: 25,
                        icon: Icon(Iconsax.add, color: AppColors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          AppElevatedButton(onPressed: () {}, child: Text("ADD TO CART")),
        ],
      ),
    );
  }
}
