import 'package:fast_food/common/buttons/app_elevated_button.dart';
import 'package:fast_food/common/widgets/app_subtitle.dart';
import 'package:fast_food/common/widgets/app_title.dart';
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:fast_food/utlis/helper/device_helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              // --------[Header section]-----
              LoginTitleAndSubtitle(),

              SizedBox(height: AppSizes.spaceBtwSections),

              //-------[Body Section]--------
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // email
                  Text(
                    AppText.email,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: AppSizes.spaceBtwInputFields / 2),

                  // input email
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      hintText: AppText.enterEmail,
                      hintStyle: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: AppSizes.spaceBtwInputFields),

                  // password
                  Text(
                    AppText.password,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: AppSizes.spaceBtwInputFields / 2),

                  // input password
                  TextFormField(
                    obscureText: true,

                    decoration: InputDecoration(
                      hintText: AppText.enterPassword,
                      hintStyle: Theme.of(context).textTheme.bodySmall,
                      prefixIcon: Icon(Iconsax.password_check),
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),

                  //warning & Forget password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // warning
                      Text(
                        AppText.incorrectPassword,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyLarge!.copyWith(color: AppColors.error),
                      ),
                      // forget password
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          AppText.forgetPassword,
                          style: Theme.of(context).textTheme.bodyLarge!
                              .copyWith(color: AppColors.buttonPrimary),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppSizes.spaceBtwSections),

                  //Sign In Button
                  AppElevatedButton(
                    onPressed: () {},
                    child: Text(AppText.signIn),
                  ),

                  SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),

              // ------[Footer section]-----
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Divider(indent: 5, endIndent: 10, thickness: 0.5),
                      ),
                      Text(
                        AppText.orContinue,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Expanded(
                        child: Divider(indent: 10, endIndent: 5, thickness: 0.5),
                      ),
                    ],
                  ),
                  SizedBox(height: AppSizes.spaceBtwItems,),

                  Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  
                      // social buttons
                      Row(
                        
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: DeviceHelper.getScreenWidth(context)/10,
                            width: DeviceHelper.getScreenWidth(context)/10,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1,color: AppColors.darkGrey),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Icon(Icons.facebook),
                          ),
                          SizedBox(width: AppSizes.spaceBtwItems,),
                         
                          Container(
                            height: DeviceHelper.getScreenWidth(context)/10,
                            width: DeviceHelper.getScreenWidth(context)/10,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1,color: AppColors.darkGrey),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Icon(Icons.facebook),
                          ),
                          SizedBox(width: AppSizes.spaceBtwItems,),
                         
                          Container(
                            height: DeviceHelper.getScreenWidth(context)/10,
                            width: DeviceHelper.getScreenWidth(context)/10,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1,color: AppColors.darkGrey),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Icon(Icons.facebook),
                          ),
                          
                         
                        ],
                      ),

                      SizedBox(height: AppSizes.spaceBtwSections,),
                  
                      // Account Sign up 
                  
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(AppText.donotHaveAccount),
                          TextButton(
                            style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                            onPressed: (){}, child: Text(AppText.signUp,style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: AppColors.primary),))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginTitleAndSubtitle extends StatelessWidget {
  const LoginTitleAndSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            AppTitle(
              title: AppText.loginTitle,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(),
            ),
            SizedBox(width: AppSizes.spaceBtwItems),
            Icon(Icons.waving_hand, color: AppColors.primary),
          ],
        ),
        SizedBox(height: AppSizes.spaceBtwItems),
        AppSubTitle(subTitle: AppText.loginSubTitle),
      ],
    );
  }
}
