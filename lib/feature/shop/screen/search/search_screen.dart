import 'package:fast_food/appbar/custom_appbar.dart';
import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/search/search_box.dart';
import 'package:fast_food/feature/shop/screen/search/widgets/fast_food_section.dart';
import 'package:fast_food/feature/shop/screen/search/widgets/recent_keywordSection.dart';
import 'package:fast_food/feature/shop/screen/search/widgets/suggested_restaurant_section.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: AppCircularIconButton(
          icon: SvgPicture.asset("assets/icon/svg/arrow_back.svg"),
          onPressed: () => Get.back(),
        ),
        title: Text(
          AppText.search,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [AppCartButton()],
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: AppSizes.spaceBtwSections),
              // search box
              AppSearchBox(),
              SizedBox(height: AppSizes.spaceBtwItems),
              // recently used keyword section
              RecentKeywordSection(),
              SizedBox(height: AppSizes.spaceBtwSections / 1.5),

              //Suggested Restaurants section
              SuggestedRestaurantSection(),
              SizedBox(height: AppSizes.spaceBtwSections / 1.5),

              // Popular Fast Food
              PopularFastFoodSection(),

              SizedBox(height: AppSizes.spaceBtwSections / 1.5),
            ],
          ),
        ),
      ),
    );
  }
}
