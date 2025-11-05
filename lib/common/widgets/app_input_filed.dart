import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppInputField extends StatelessWidget {
  const AppInputField({
    super.key,
    required this.title,
    required this.hintText,
    this.ispassword = false,
    required this.prefixIcon,
  });

  final String title, hintText;
  final bool ispassword;
  final Icon prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // password
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: AppSizes.spaceBtwInputFields / 2),

        // input password
        TextFormField(
          obscureText: true,

          decoration: InputDecoration(
            fillColor: AppColors.grey,
            filled: true,
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodySmall,
            prefixIcon: prefixIcon,

            suffixIcon:
                ispassword == true ? Icon(Iconsax.eye_slash) : SizedBox(),
          ),
        ),
      ],
    );
  }
}
