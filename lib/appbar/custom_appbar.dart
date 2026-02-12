import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../common/buttons/circular_Icon_button.dart';
import '../utlis/constrant/app_colors.dart';
import '../utlis/constrant/app_size.dart';
import '../utlis/constrant/app_text.dart';
import '../utlis/helper/device_helper.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title, this.actions, this.leading,
    this.backgroundColor = Colors.transparent,
  });

  final Widget? title;
  final List<Widget>? actions;
  final Widget? leading;
  final Color backgroundColor;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: AppBar(
        leading: leading,
        title: title,

        actions: actions,
        centerTitle: false,
        elevation: 0,
        backgroundColor: backgroundColor
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceHelper.getAppBarHeight());
}

class AppCartButton extends StatelessWidget {
  const AppCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,

      child: Center(
        child: Stack(
          children: [
            AppCircularIconButton(
              icon: SvgPicture.asset("assets/icon/svg/cart.svg"),
              backgroundColor: AppColors.black,
              color: AppColors.white,
              onPressed: () {},
            ),

            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 25,
                width: 25,

                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "2",
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium!.apply(color: AppColors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppText.deliverTo,
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.apply(color: AppColors.primary),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Halal Lab office",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            IconButton(
              constraints: const BoxConstraints(),
              // Removes the 48px min size
              style: const ButtonStyle(
                tapTargetSize:
                    MaterialTapTargetSize.shrinkWrap, // Removes extra margin
              ),
              onPressed: () {},
              icon: SvgPicture.asset("assets/icon/svg/arrow_down.svg"),
            ),
          ],
        ),
      ],
    );
  }
}
