import 'package:fast_food/common/widgets/app_title.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: Column(
          children: [
            Row(
              children: [
                AppTitle(
                  title: AppText.loginTitle,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(),
                ),
                SizedBox(width: AppSizes.spaceBtwItems,),
                Icon(Icons.waving_hand ,color: AppColors.primary,)
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
