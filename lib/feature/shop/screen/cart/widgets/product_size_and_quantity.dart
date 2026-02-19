import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:flutter/material.dart';

class CartProductSizeAndQuantity extends StatelessWidget {
  const CartProductSizeAndQuantity({
    super.key,
    required this.itemSize,
    required this.itemQuantity,
  });

  final int itemQuantity, itemSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text(
            "$itemSize\"",
            style: Theme.of(
              context,
            ).textTheme.titleSmall!.copyWith(color: AppColors.textSecondery),
          ),

          SizedBox(
            width: 70,
            child: Row(
              children: [
                SizedBox(
                  height: 22,
                  width: 22,
                  child: AppCircularIconButton(
                    icon: const Icon(
                      Icons.remove,
                      size: 16,
                      color: AppColors.white,
                    ),
                    onPressed: () {}, // Add logic to CartController
                    backgroundColor: AppColors.lightBlack,
                    padding: EdgeInsets.zero,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "$itemQuantity",
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium!.copyWith(color: AppColors.white),
                  ),
                ),
                SizedBox(
                  height: 22,
                  width: 22,
                  child: AppCircularIconButton(
                    icon: const Icon(
                      Icons.add,
                      size: 16,
                      color: AppColors.white,
                    ),
                    onPressed: () {},
                    backgroundColor: AppColors.lightBlack,
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
