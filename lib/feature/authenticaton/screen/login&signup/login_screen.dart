import 'package:fast_food/common/widgets/app_title.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              AppTitle(title: AppText.loginTitle, style: Theme.of(context).textTheme.headlineMedium!.copyWith(),)
            ],
          )
        ],
      ),
    );
  }
}