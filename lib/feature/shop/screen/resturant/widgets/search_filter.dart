import 'package:fast_food/common/buttons/app_elevated_button.dart';
import 'package:fast_food/common/buttons/circular_Icon_button.dart';
import 'package:fast_food/common/buttons/rounded_button.dart';
import 'package:fast_food/common/shape/rounded_container.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: AppCustomRoundedContainer(
        backgroundColor: AppColors.white,

        height: 700,
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title and close button
                TitleAndClose(),
                SizedBox(height: AppSizes.spaceBtwSections / 3),
                // Offer section
                OfferFilter(),
            
                SizedBox(height: AppSizes.spaceBtwSections / 1.5),
                // Delivery time
                TimeFilter(),
                SizedBox(height: AppSizes.spaceBtwSections / 1.5),
                // Pricing
                PricingFilter(),
                SizedBox(height: AppSizes.spaceBtwSections / 1.5),
                // rating
                RatingFilter(),
            
                SizedBox(height: AppSizes.spaceBtwSections / 1.5),
                AppElevatedButton(onPressed: ()=> Get.back(), child: Text(AppText.filterCapital) )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RatingFilter extends StatelessWidget {
  const RatingFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppText.ratingCapital,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(height: AppSizes.spaceBtwItems / 2),
    
        SizedBox(height: 45,
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            
            scrollDirection: Axis.horizontal,
            itemBuilder:
                (context, index) => AppCircularIconButton(
                  showBorder: true,
                  backgroundColor: AppColors.white,
                  icon: SvgPicture.asset(
                    AppImage.starFilled,
                    // ignore: deprecated_member_use
                    color: index==4?null: AppColors.buttonOrange,
                  ),
                  onPressed: () {},
                ),
            separatorBuilder:
                (context, index) =>
                    SizedBox(width: AppSizes.spaceBtwItems / 2),
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}

class PricingFilter extends StatelessWidget {
  const PricingFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppText.pricingCapital,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(height: AppSizes.spaceBtwItems / 2),
    
        SizedBox(height: 45,
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            
            scrollDirection: Axis.horizontal,
            itemBuilder:
                (context, index) =>AppCircularIconButton(
                  
              showBorder: true,
              backgroundColor: AppColors.white,
              icon: Text("${(index+1)*10}\$"),
              onPressed: () {},
            ),
            separatorBuilder:
                (context, index) =>
                    SizedBox(width: AppSizes.spaceBtwItems / 2),
            itemCount: 3,
          ),
        ),
    
       
      ],
    );
  }
}

class TimeFilter extends StatelessWidget {
  const TimeFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppText.deliveryTimeCapital,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(height: AppSizes.spaceBtwItems / 2),

        Wrap(
          direction: Axis.horizontal,
          runSpacing: AppSizes.spaceBtwItems / 2,
          spacing: AppSizes.spaceBtwItems / 2,

          children: [
            SizedBox(
              width: 120,
              child: AppRoundedButton(keyWord: "10-15 min", onPressed: () {}),
            ),

            SizedBox(
              width: 100,
              child: AppRoundedButton(keyWord: "20 min", onPressed: () {}),
            ),
            SizedBox(
              width: 100,
              child: AppRoundedButton(keyWord: "30 min", onPressed: () {}),
            ),
          ],
        ),
      ],
    );
  }
}

class TitleAndClose extends StatelessWidget {
  const TitleAndClose({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppText.filterYourSearch,
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontSize: 17),
        ),

        AppCircularIconButton(
          icon: SvgPicture.asset(AppImage.crossGrey),

          onPressed: () => Get.back(),
        ),
      ],
    );
  }
}

class OfferFilter extends StatelessWidget {
  const OfferFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppText.offersCapital,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(height: AppSizes.spaceBtwItems / 2),

        Wrap(
          direction: Axis.horizontal,
          runSpacing: AppSizes.spaceBtwItems / 2,
          spacing: AppSizes.spaceBtwItems / 2,

          children: [
            SizedBox(
              width: 120,
              child: AppRoundedButton(
                keyWord: AppText.delivery,
                onPressed: () {},
              ),
            ),

            SizedBox(
              width: 120,
              child: AppRoundedButton(
                keyWord: AppText.pickUp,
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 100,
              child: AppRoundedButton(keyWord: AppText.offer, onPressed: () {}),
            ),
            SizedBox(
              width: 250,
              child: AppRoundedButton(
                keyWord: AppText.onlinePaymentAvailable,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
