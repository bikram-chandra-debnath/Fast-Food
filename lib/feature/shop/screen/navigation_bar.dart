import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controller/navigation_controller.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AppNavigationController());
    return Scaffold(
      body: Obx(() => controller.pages[controller.currentIndex.value]),

      bottomNavigationBar: Obx(
        () => Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: CrystalNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: (index) => controller.onPageIndexChange(index),

            items: [
              CrystalNavigationBarItem(icon: Iconsax.home,

              ),
              CrystalNavigationBarItem(icon: Iconsax.search_normal),
              CrystalNavigationBarItem(
                icon: Iconsax.heart,
                badge: Badge(label: Text("9+"), backgroundColor: Colors.red),

              ),
              CrystalNavigationBarItem(icon: Iconsax.user,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
