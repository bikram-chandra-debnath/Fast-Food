
import 'package:fast_food/common/search/search_box.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class HomeUpperSection extends StatelessWidget {
  const HomeUpperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            
      SizedBox(height: AppSizes.spaceBtwSections / 2),
            
      // search box
      AppSearchBox(),
            
      SizedBox(height: AppSizes.spaceBtwSections / 2),
            
      ],),
    );
  }
}