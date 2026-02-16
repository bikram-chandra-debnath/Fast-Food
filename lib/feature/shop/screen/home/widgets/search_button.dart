
import 'package:fast_food/common/widgets/app_data_show_container.dart';
import 'package:fast_food/feature/shop/screen/search/search_screen.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(()=> SearchScreen()),
      child: AppDataShowingContainer(child: Center(
       child:  Padding(
         padding: const EdgeInsets.symmetric(horizontal: AppSizes.spaceBtwItems),
         child: Row(
           children: [
             Hero(
              tag:  "search_tag",
              child: SvgPicture.asset("assets/icon/svg/search.svg")),
             SizedBox(width: AppSizes.sm,), 
             Text("Search dishes, restaurants",style: Theme.of(context).textTheme.bodySmall,)
           ],
         ),
       ),
       
     ),),
    );
  }
}

