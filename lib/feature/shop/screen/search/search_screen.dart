import 'package:fast_food/appbar/custom_appbar.dart';
import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/search/search_box.dart';
import 'package:fast_food/common/widgets/shop/rating.dart';
import 'package:fast_food/common/widgets/shop/section_heading.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
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

              

            ],
          ),
        ),
      ),
    );
  }
}

class SuggestedRestaurantSection extends StatelessWidget {
  const SuggestedRestaurantSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionHeading(
          title: AppText.suggestedRestaurants,
          isAction: false,
        ),
        SizedBox(height: AppSizes.spaceBtwItems),
    
        SizedBox(
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder:
                (context, index) => RestaurantCardH(
                  image: "assets/restaurants/image.jpg",
                  name: "Pansi Restaurant",
                  raitng: '4.7',
                ), separatorBuilder: (BuildContext context, int index) =>SizedBox(height: AppSizes.md,),
          ),
        ),
      ],
    );
  }
}

class RestaurantCardH extends StatelessWidget {
  const RestaurantCardH({
    super.key,
    required this.image,
    required this.name,
    required this.raitng,
  });

  final String image, name, raitng;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border(bottom: BorderSide(width: 1, color: AppColors.grey)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 60,
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(AppSizes.sm),
            ),

            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.sm),
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: AppSizes.md),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: Theme.of(context).textTheme.bodyLarge),
              SizedBox(height: AppSizes.sm / 2),
              AppRating(rating: raitng),
            ],
          ),
        ],
      ),
    );
  }
}

class RecentKeywordSection extends StatelessWidget {
  const RecentKeywordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionHeading(title: AppText.recentKeywords, isAction: false),
        SizedBox(height: AppSizes.spaceBtwItems / 2),

        SizedBox(
          height: 45,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => KeywordCard(keyWord: "Burger"),
            separatorBuilder:
                (context, index) => SizedBox(width: AppSizes.spaceBtwItems),
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}

class KeywordCard extends StatelessWidget {
  const KeywordCard({super.key, required this.keyWord});

  final String keyWord;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.md,
        vertical: AppSizes.md / 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(width: 1.5, color: AppColors.grey),
      ),
      child: Center(
        child: Text(keyWord, style: Theme.of(context).textTheme.bodyLarge),
      ),
    );
  }
}
