import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CustomOfferAlertDailog extends StatelessWidget {
  const CustomOfferAlertDailog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(AppSizes.defaultSpace),
            height: 350,
            width: double.maxFinite,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xffFFEB34), Color(0xffE76F00)],
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: AppSizes.defaultSpace,
                  left: AppSizes.defaultSpace,
                  right: AppSizes.defaultSpace,

                  child: SvgPicture.asset("assets/shapes/trianlgles.svg"),
                ),

                Positioned(
                  top: AppSizes.defaultSpace * 3,
                  left: AppSizes.defaultSpace,
                  right: AppSizes.defaultSpace,
                  child: Column(
                    children: [
                      Text(
                        "Hurry Offers!",
                        style: Theme.of(
                          context,
                        ).textTheme.displaySmall!.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 30
                        ),
                      ),
                      SizedBox(height: AppSizes.spaceBtwSections,),
                      Text(
                        "#1243CD2",
                        style: Theme.of(
                          context,
                        ).textTheme.headlineMedium!.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: AppSizes.spaceBtwSections/2,),
                      Text(
                        "Use the cupon get 25% discount",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.w900,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              
                Positioned( 
                  bottom: AppSizes.defaultSpace,
                  left: AppSizes.defaultSpace,
                  right: AppSizes.defaultSpace,
                  child: OutlinedButton(
                  style: OutlinedButton.styleFrom(side: BorderSide(color: AppColors.white),
                  ),
                  onPressed: (){}, child: Text("GOT IT", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.textWhite,),)))
              
              ],
            ),
          ),

          Positioned(
            top: 0,
            right: 20,
            child: AppCircularIconButton(
              icon: SvgPicture.asset("assets/icon/svg/cross.svg"),
              onPressed: () => Get.back(),
              backgroundColor: AppColors.buttonBackground,
            ),
          ),
        ],
      ),
    );
  }
}
