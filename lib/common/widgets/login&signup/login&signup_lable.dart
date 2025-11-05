
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:flutter/material.dart';

class SignUpOrSignIn extends StatelessWidget {
  const SignUpOrSignIn({
    super.key,
    required this.label,
    required this.buttonName,
    required this.onPressed,
  });
  final String label, buttonName;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label),
        TextButton(
          style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
          onPressed: onPressed,
          child: Text(
            buttonName,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}
