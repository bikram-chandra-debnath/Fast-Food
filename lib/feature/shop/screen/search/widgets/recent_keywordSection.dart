
import 'package:fast_food/common/widgets/login&signup/app_keyword.dart';
import 'package:fast_food/common/widgets/shop/section_heading.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart' ;
import 'package:flutter/material.dart';

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
            itemBuilder: (context, index) => AppRoundedButton(keyWord: "Burger", onPressed: () {  },),
            separatorBuilder:
                (context, index) => SizedBox(width: AppSizes.spaceBtwItems),
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
