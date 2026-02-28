import 'package:fast_food/common/buttons/app_elevated_button.dart';
import 'package:fast_food/feature/shop/screen/address/widgets/address_form.dart';
import 'package:fast_food/feature/shop/screen/address/widgets/show_map.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';

class NewAddressScreen extends StatelessWidget {
  const NewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //------[Uper Section]-------

            // Map and Back button
            ShowMap(),
            SizedBox(height: AppSizes.spaceBtwSections),
            //----------[Lower Section]-----
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
              child: AddressForm(),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: AppElevatedButton(
          onPressed: () {},
          child: Text(
            AppText.saveLocation,
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(color: AppColors.textWhite),
          ),
        ),
      ),
    );
  }
}
