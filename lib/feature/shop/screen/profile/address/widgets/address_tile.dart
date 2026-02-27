
import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/common/widgets/profile/icon_container.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddressTile extends StatelessWidget {
  const AddressTile({
    super.key,
    required this.icon,
    required this.title,
    required this.address,
  });

  final String icon, title, address;

  @override
  Widget build(BuildContext context) {
    return AppCustomRoundedContainer(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.md,
        vertical: AppSizes.md,
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppCircularIconContainer(icon: icon, height: 50, width: 50),
          SizedBox(width: AppSizes.spaceBtwItems),

          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.titleSmall),

                    // edit and delete button
                    SizedBox(
                      child: Row(
                        children: [
                          // edit button
                          AppCircularIconButton(
                            icon: SvgPicture.asset(AppImage.editOrange),
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            height: 25,
                            width: 25,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            onPressed: () {},
                          ),
                          SizedBox(width: AppSizes.spaceBtwItems / 2),
                          // delete button
                          AppCircularIconButton(
                            icon: SvgPicture.asset(AppImage.deleteOrange),
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            height: 25,
                            width: 25,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: AppSizes.spaceBtwItems / 2),

                Row(
                  children: [
                    Flexible(
                      child: Text(
                        address,
                        style: Theme.of(context).textTheme.bodySmall,
                        maxLines: 2,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    SizedBox(width: 40),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
