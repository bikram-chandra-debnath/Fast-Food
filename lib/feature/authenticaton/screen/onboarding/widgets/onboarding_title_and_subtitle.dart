import 'package:fast_food/common/widgets/app_subtitle.dart';
import 'package:fast_food/common/widgets/app_title.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/helper/device_helper.dart';
import 'package:flutter/material.dart';

class OnboardingTitleAndSubtitle extends StatelessWidget {
  const OnboardingTitleAndSubtitle({
    super.key, required this.title, required this.subTitle,
  });

  final String title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: DeviceHelper.getBottomNavigationBarHeight()*2.8,
      right: AppSizes.defaultSpace,
      left: AppSizes.defaultSpace,
        
      child: Column(
        children: [
          // title
          AppTitle(title: title,textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.white),),
          SizedBox(height: AppSizes.spaceBtwItems),
          // subtitle
          AppSubTitle(subTitle:subTitle,textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}




