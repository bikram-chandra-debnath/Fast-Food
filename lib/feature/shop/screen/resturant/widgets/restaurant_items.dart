import 'package:fast_food/common/buttons/rounded_button.dart';
import 'package:fast_food/feature/shop/controller/details_controller.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestaurantItems extends StatelessWidget {
  const RestaurantItems({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = DetailsController.instance;
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,

        itemBuilder:
            (BuildContext context, int index) => Obx(
              () => AppRoundedButton(
                keyWord: "Burger ${index + 1}",
                onPressed: () => controller.changeIndex(index),
                backgroundColor:
                    index == controller.current.value
                        ? AppColors.buttonOrange
                        : null,
                color:
                    index == controller.current.value
                        ? AppColors.textWhite
                        : null,
              ),
            ),
        itemCount: 4,
        separatorBuilder:
            (BuildContext context, int index) =>
                SizedBox(width: AppSizes.spaceBtwItems),
      ),
    );
  }
}
