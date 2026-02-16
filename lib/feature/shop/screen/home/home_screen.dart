import 'dart:async';

import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/widgets/shop/custom_offer_alert_dailog.dart';
import 'package:fast_food/feature/shop/screen/home/widgets/all_categories_section.dart';
import 'package:fast_food/feature/shop/screen/home/widgets/home_upper_section.dart';
import 'package:fast_food/feature/shop/screen/home/widgets/open_restaurents_section.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../appbar/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 2),
      () => Get.dialog( 
        barrierDismissible: false, CustomOfferAlertDailog()),
    );
    return Scaffold(
      appBar: CustomAppBar(
        leading: AppCircularIconButton(
          icon: SvgPicture.asset("assets/icon/svg/menu.svg"),
          onPressed: () {},
        ),
        title: AppBarTitle(),
        actions: [AppCartButton()],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: AppSizes.spaceBtwSections / 2),

            // ---[Upper section]---
            HomeUpperSection(),
            // ----------[Body Section]------

            // all categories section
            AllCategoriesSection(),

            // Open Resturants
            OpenRestaurantSection(),
          ],
        ),
      ),
    );
  }
}

