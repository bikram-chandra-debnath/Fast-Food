import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class EditProfileInputField extends StatelessWidget {
  const EditProfileInputField({
    super.key,
    required this.controller,
    required this.title, this.maxLines, this.minLines,
  });

  final TextEditingController controller;
  final String title;
final int? maxLines,minLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        SizedBox(height: AppSizes.spaceBtwInputFields / 4),
        AppCustomRoundedContainer(
          borderRadius: AppSizes.sm,
          padding: EdgeInsets.zero,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
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
