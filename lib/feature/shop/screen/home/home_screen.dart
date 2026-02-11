import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/widgets/app_input_filed.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:fast_food/utlis/helper/device_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../appbar/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: AppCircularIconButton(
          icon: SvgPicture.asset("assets/icon/svg/menu.svg"),
          onPressed: () {},
        ),
        title: AppBarTitle(),
        actions: [AppCartButton()],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSizes.spaceBtwSections / 2),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Hey Halal, ",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    TextSpan(
                      text: "Goog Afternoon!",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),

              SizedBox(height: AppSizes.spaceBtwSections/2),

              // search box
              Container(
                height: 60,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.sm),
                  color: AppColors.lightGrey,
                ),

                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        padding: const EdgeInsets.all(AppSizes.sm * 1.8),
                        child: SvgPicture.asset("assets/icon/svg/search.svg"),
                      ),
                      hintText: "Search dishes, restaurants",
                      hintStyle: Theme.of(context).textTheme.bodySmall,
                      border:OutlineInputBorder(borderSide: BorderSide.none ),
                      disabledBorder: OutlineInputBorder(borderSide: BorderSide.none ),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide.none ),
                      focusedBorder:OutlineInputBorder(borderSide: BorderSide.none ),
                      errorBorder: OutlineInputBorder(borderSide: BorderSide.none ),
                      contentPadding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace, vertical: AppSizes.sm
                    )
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
