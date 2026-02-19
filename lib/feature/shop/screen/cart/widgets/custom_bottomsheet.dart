import 'package:fast_food/common/buttons/app_elevated_button.dart';
import 'package:fast_food/common/widgets/app_data_show_container.dart';
import 'package:fast_food/feature/shop/screen/cart/widgets/breakdown_button.dart';
import 'package:fast_food/feature/shop/screen/cart/widgets/total_cart_amount.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';

class AppCustomBottomSheet extends StatelessWidget {
  const AppCustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.maxFinite,
      padding: EdgeInsets.all(AppSizes.defaultSpace),
      decoration: BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Delivey Address Edit
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppText.deliveryAddress,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.copyWith(color: AppColors.darkGrey),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {},
                child: Text(
                  AppText.editCapital,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColors.buttonOrange,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.buttonOrange,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: AppSizes.spaceBtwItems),
          // Show delivery address
          AppDataShowingContainer(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.defaultSpace,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Text(
                    "2118 Thornridge Cir. Syracuse",
                    style: Theme.of(context).textTheme.bodySmall,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: AppSizes.spaceBtwSections),

          // Totla Amount and breardown
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [TotalCartAmount(), BreakdownButton(onPressed: () {})],
          ),

          SizedBox(height: AppSizes.spaceBtwSections),

          // Place Order Button
          AppElevatedButton(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,

            onPressed: () {},
            child: Text(
              AppText.placeOrderCapital,
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(color: AppColors.textWhite),
            ),
          ),
        ],
      ),
    );
  }
}
