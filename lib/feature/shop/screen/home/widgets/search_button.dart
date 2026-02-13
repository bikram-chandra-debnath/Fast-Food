
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
       height: 60,
       width: double.maxFinite,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(AppSizes.sm),
         color: AppColors.lightGrey,
       ),
          
       child: Center(
         child:  Padding(
           padding: const EdgeInsets.symmetric(horizontal: AppSizes.spaceBtwItems),
           child: Row(
             children: [
               SvgPicture.asset("assets/icon/svg/search.svg"),
               SizedBox(width: AppSizes.sm,), 
               Text("Search dishes, restaurants",style: Theme.of(context).textTheme.bodySmall,)
             ],
           ),
         ),
         
       ),
          ),
    );
  }
}