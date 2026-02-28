import 'package:fast_food/common/buttons/rounded_button.dart';
import 'package:fast_food/common/widgets/app_input_filed.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddressForm extends StatelessWidget {
  const AddressForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController addressController = TextEditingController(
      text: "3235 Royal Ln. mesa, new jersy 34567",
    );
    final TextEditingController streetController = TextEditingController(
      text: "hason nagar",
    );
    final TextEditingController postCodeController = TextEditingController(
      text: "34567",
    );
    final TextEditingController appartmentController = TextEditingController(
      text: "345",
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Address
        AppInputField(
          controller: addressController,
          title: AppText.addressCapital,
          prefixIcon: Container(
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset(AppImage.location, height: 20, width: 20),
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields),

        // Street and Post Code
        Row(
          children: [
            Expanded(
              child: AppInputField(
                controller: streetController,
                title: AppText.streetCapital,
              ),
            ),
            SizedBox(width: AppSizes.spaceBtwInputFields),
            Expanded(
              child: AppInputField(
                controller: postCodeController,
                title: AppText.postCodeCapital,
              ),
            ),
          ],
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields),

        //Appartment
        AppInputField(
          controller: appartmentController,
          title: AppText.appartmentCapital,
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields),

        // select lebel
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppText.labelAs,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(height: AppSizes.sm / 2),

            Row(
              children: [
                AppRoundedButton(
                  keyWord: "Home",
                  onPressed: () {},
                  showBorder: false,
                  backgroundColor: AppColors.primary,
                  color: AppColors.textWhite,
                ),
                SizedBox(width: AppSizes.spaceBtwItems),
                AppRoundedButton(
                  keyWord: "Work",
                  onPressed: () {},
                  showBorder: false,
                  backgroundColor: AppColors.containerBackground,
                ),
                SizedBox(width: AppSizes.spaceBtwItems),
                AppRoundedButton(
                  keyWord: "Other",
                  onPressed: () {},
                  showBorder: false,
                  backgroundColor: AppColors.containerBackground,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
