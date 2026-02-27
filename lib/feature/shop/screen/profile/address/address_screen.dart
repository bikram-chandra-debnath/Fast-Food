import 'package:fast_food/appbar/custom_appbar.dart';
import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/feature/shop/screen/profile/address/widgets/address_tile.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: AppCircularIconButton(
          icon: SvgPicture.asset(AppImage.arrowBack),
          onPressed: () => Get.back(),
        ),
        title: Text(
          AppText.myAddress,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: AppSizes.spaceBtwSections),

              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder:
                    (context, index) => AddressTile(
                      icon: AppImage.homeBlue,
                      title: AppText.homeCapital,
                      address: "2464 Royal Ln. Mesa, New Jersey 45463",
                    ),
                separatorBuilder:
                    (context, index) =>
                        SizedBox(height: AppSizes.spaceBtwItems),
                itemCount: 1,
              ),

              // remove after complet backend
              SizedBox(height: AppSizes.spaceBtwItems),
              AddressTile(
                icon: AppImage.workPerpal,
                title: AppText.workCapital,
                address: "3891 Ranchview Dr. Richardson, California 62639",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
