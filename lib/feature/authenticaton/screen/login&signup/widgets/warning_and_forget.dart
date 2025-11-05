import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';

class WarningAndForget extends StatelessWidget {
  const WarningAndForget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // warning
        Text(
          AppText.incorrectPassword,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge!.copyWith(color: AppColors.error),
        ),
        // forget password
        TextButton(
          onPressed: () {},
          child: Text(
            AppText.forgetPassword,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(color: AppColors.buttonPrimary),
          ),
        ),
      ],
    );
  }
}

