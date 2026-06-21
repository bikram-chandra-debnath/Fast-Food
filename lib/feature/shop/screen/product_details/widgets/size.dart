import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/feature/shop/controller/details_controller.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class Sizes extends StatelessWidget {
  const Sizes({super.key, required this.productSize});
  final List productSize;
  @override
  Widget build(BuildContext context) {
    final controller = DetailsController.instance;

    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Text(AppText.size),
          SizedBox(width: AppSizes.spaceBtwItems),
          ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder:
                (context, index) => Obx(
                  () => GestureDetector(
                    onTap: () => controller.selectSize(index),

                    child: AppCustomRoundedContainer(
                      boxShadow:
                          index == controller.size.value
                              ? [
                                BoxShadow(
                                  color: AppColors.darkGrey.withValues(
                                    alpha: 0.5,
                                  ),
                                  blurRadius: 4,
                                  spreadRadius: 1,
                                  offset: Offset(0, 2),
                                ),
                              ]
                              : null,

                      backgroundColor:
                          index == controller.size.value
                              ? AppColors.buttonOrange
                              : AppColors.containerBackground,
                      padding: const EdgeInsets.all(10),
                      isCircular: true,
                      child: Center(
                        child: Text(
                          productSize[index],
                          style:
                              index == controller.size.value
                                  ? Theme.of(context).textTheme.bodyLarge!
                                      .copyWith(color: AppColors.textWhite)
                                  : Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                  ),
                ),
            separatorBuilder:
                (context, index) => SizedBox(width: AppSizes.spaceBtwItems),
            itemCount: productSize.length,
          ),

          SizedBox(width: AppSizes.spaceBtwItems),
        ],
      ),
    );
  }
}
