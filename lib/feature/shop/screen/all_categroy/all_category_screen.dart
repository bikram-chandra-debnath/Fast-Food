import 'package:fast_food/appbar/custom_appbar.dart';
import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/common/widgets/details%20and%20restaurant%20view/show_product_view.dart';
import 'package:fast_food/feature/shop/controller/category_controller.dart';
import 'package:fast_food/feature/shop/controller/details_controller.dart';
import 'package:fast_food/feature/shop/screen/home/widgets/open_restaurents_section.dart';
import 'package:fast_food/feature/shop/screen/search/search_screen.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AllCategoryScreen extends StatelessWidget {
  const AllCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DetailsController());
    final controller = CategoryController.instance;
    return Scaffold(
      appBar: CustomAppBar(
        leading: AppCircularIconButton(
          onPressed: () => Get.back(),
          icon: SvgPicture.asset(AppImage.arrowBack),
        ),
        actions: [
          AppCircularIconButton(
            onPressed: () => Get.to(() => SearchScreen()),
            height: 50,
            width: 50,
            backgroundColor: AppColors.background,
            icon: SvgPicture.asset(
              "assets/icon/svg/search.svg",
              // ignore: deprecated_member_use
              color: AppColors.white,
            ),
          ),
          SizedBox(width: AppSizes.spaceBtwItems),
          AppCircularIconButton(
            height: 50,
            width: 50,
            backgroundColor: AppColors.containerBackground,
            icon: SvgPicture.asset("assets/icon/svg/filter.svg"),
          ),
        ],

        title: GestureDetector(
          onTap: () {},
          child: AppCustomRoundedContainer(
            backgroundColor: Colors.transparent,
            padding: EdgeInsets.all(15),
            borderRadius: 50,
            border: Border.all(width: 1, color: AppColors.darkGrey),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,

              children: [
                Text("Burger", style: Theme.of(context).textTheme.titleLarge),
                SizedBox(width: AppSizes.spaceBtwItems / 2),

                SvgPicture.asset(
                  "assets/icon/svg/arrow_down.svg",
                  // ignore: deprecated_member_use
                  color: AppColors.primary,
                ),
              ],
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.defaultSpace,
              ),
              child: ShowProductView(
                productList: controller.popularBurger,
                iscategory: false,
              ),
            ),
            // Open Restaurant Section
            OpenRestaurantSection(),
          ],
        ),
      ),
    );
  }
}
