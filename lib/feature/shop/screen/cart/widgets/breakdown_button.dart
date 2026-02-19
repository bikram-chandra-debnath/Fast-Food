import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BreakdownButton extends StatelessWidget {
  const BreakdownButton({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          Text(
            AppText.breakdown,
            style: Theme.of(
              context,
            ).textTheme.titleSmall!.copyWith(color: AppColors.buttonOrange),
          ),
          SizedBox(width: AppSizes.sm),
          SvgPicture.asset("assets/icon/svg/arrow_forward_black.svg"),
        ],
      ),
    );
  }
}
