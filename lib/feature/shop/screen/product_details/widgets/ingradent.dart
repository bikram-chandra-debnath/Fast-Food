import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Ingradents extends StatelessWidget {
  const Ingradents({super.key});

  @override
  Widget build(BuildContext context) {
    final ingredients = [
      "assets/icon/svg/ingrident/onion.svg",
      "assets/icon/svg/ingrident/salt.svg",
      "assets/icon/svg/ingrident/chicken.svg",
      "assets/icon/svg/ingrident/garlic.svg",
      "assets/icon/svg/ingrident/pappers.svg",
      "assets/icon/svg/ingrident/ginger.svg",
      "assets/icon/svg/ingrident/broccoli.svg",
      "assets/icon/svg/ingrident/orange.svg",
      "assets/icon/svg/ingrident/walnut.svg",
    ];
    final ingredientsName = [
      "Onion",
      "Salt",
      "Chicken",
      "Garlic",
      "Pappers",
      "Ginger",
      "Broccoli",
      "Orange",
      "Walnut",
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppText.ingrident),
        SizedBox(height: AppSizes.spaceBtwItems),
        SizedBox(
          height: 350,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.8,
              crossAxisCount: 5,
              crossAxisSpacing: AppSizes.spaceBtwItems,
              mainAxisSpacing: AppSizes.spaceBtwItems,
            ),
            itemCount: ingredients.length,
            itemBuilder:
                (context, index) => Column(
                  children: [
                    AppCustomRoundedContainer(
                      isCircular: true,
                      padding: const EdgeInsets.all(10),
                      backgroundColor: AppColors.containerBackground2,
                      child: Center(
                        child: SvgPicture.asset(ingredients[index]),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      ingredientsName[index],
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
          ),
        ),
      ],
    );
  }
}
