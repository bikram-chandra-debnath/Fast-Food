import 'package:fast_food/appbar/custom_appbar.dart';
import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: AppCircularIconButton(
          icon: SvgPicture.asset(AppImage.arrowBack),
          onPressed: () => Get.back(),
        ),
        title: Text(
          AppText.details,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: AppSizes.defaultSpace,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                AppCustomRoundedContainer(
                  margin: EdgeInsets.only(top: AppSizes.defaultSpace * 1.5),
                  height: 184,
                  width: double.maxFinite,
                  padding: EdgeInsetsGeometry.zero,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
                    child: Image.asset(
                      "assets/restaurants/image.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  bottom: 10,
                  right: 10,
                  child:
                  //  IconButton(
                  //   style: IconButton.styleFrom(
                  //     backgroundColor: Colors.amber
                  //   ),
                  //   onPressed: (){}, icon: Icon(Iconsax.heart))

                  AppCircularIconButton(icon: Icon(Iconsax.heart, color: Colors.white,),backgroundColor: Colors.amber,)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
