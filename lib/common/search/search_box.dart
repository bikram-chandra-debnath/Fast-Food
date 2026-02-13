import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppSearchBox extends StatelessWidget {
  const AppSearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.spaceBtwItems),
      height: 60,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.sm),
        color: AppColors.lightGrey,
      ),

      child: Center(
        child: TextField(
          decoration: InputDecoration(
            prefixIconConstraints: BoxConstraints(
              minWidth: 10, // adjust as needed
              minHeight: 10,
            ),

            prefixIcon: Hero(tag:  "search_tag",
            child: Container(margin: EdgeInsets.only(right: 5), child: SvgPicture.asset("assets/icon/svg/search.svg"))),
            hintText: "Search dishes, restaurants",
            hintStyle: Theme.of(context).textTheme.bodySmall,
            border: OutlineInputBorder(borderSide: BorderSide.none),
            disabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
            errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}
