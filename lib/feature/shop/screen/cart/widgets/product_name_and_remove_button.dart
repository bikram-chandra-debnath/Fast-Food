import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/feature/authenticaton/controller/cart/cart_controller.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CartProductNameAndRemove extends StatelessWidget {
  const CartProductNameAndRemove({super.key, required this.itemName});

  final String itemName;
  @override
  Widget build(BuildContext context) {
    final controller = CartController.instance;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 126,
          child: Text(
            itemName,
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(color: AppColors.textWhite),
            maxLines: 2,
            overflow: TextOverflow.fade,
          ),
        ),

        Obx(
          () =>
              controller.isNotEdit.value
                  ? SizedBox()
                  : SizedBox(
                    height: 25,
                    width: 25,
                    child: AppCircularIconButton(
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      icon: SvgPicture.asset(AppImage.crossWhite),
                      onPressed: () {},
                      backgroundColor: AppColors.buttonCancle,
                    ),
                  ),
        ),
      ],
    );
  }
}
