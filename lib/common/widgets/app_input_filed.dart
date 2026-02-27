import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppInputField extends StatelessWidget {
  const AppInputField({
    super.key,
    required this.title,
     this.hintText,
    this.obscureText = false,
    this.ispassword = false,
    this.maxLines=1,
    this.minLines=1,
    this.controller,
  });

  final String title;
  final String? hintText;
  final bool obscureText;
  final bool ispassword;
  final int maxLines, minLines;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // password
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        SizedBox(height: AppSizes.spaceBtwInputFields / 4),

        // input password
        AppCustomRoundedContainer(
          borderRadius: AppSizes.sm,
          padding: EdgeInsets.zero,
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              fillColor: Colors.transparent,
              filled: true,
              hintText:hintText ,
              hintStyle: Theme.of(context).textTheme.bodySmall,
              suffixIcon:
                  ispassword == true
                      ? IconButton(
                        style: IconButton.styleFrom(padding: EdgeInsets.all(0)),
                        onPressed: () {},
                        icon: Icon(
                          obscureText == true ? Iconsax.eye : Iconsax.eye_slash,
                        ),
                      )
                      : null,
              border: OutlineInputBorder(borderSide: BorderSide.none),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              disabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
            maxLines: maxLines,
            minLines: minLines,
          ),
        ),
      ],
    );
  }
}
