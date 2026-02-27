import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/widgets/profile/icon_container.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppCustomListTile extends StatelessWidget {
  const AppCustomListTile({
    super.key,
    this.ontap,
    required this.title,
    required this.leadingIcon,
    this.subtitle,
    this.isTrailing = true,
  });

  final VoidCallback? ontap;
  final String title, leadingIcon;
  final Widget? subtitle;
  final bool isTrailing;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: ListTile(
        leading: AppCircularIconContainer(icon: leadingIcon),


        title: Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.normal),
        ),

        trailing:
            isTrailing
                ? AppCircularIconButton(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  icon: SvgPicture.asset(AppImage.arrowForwardGrey),
                )
                : SizedBox(),
        subtitle: subtitle,
      ),
    );
  }
}
