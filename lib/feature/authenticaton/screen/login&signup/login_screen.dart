import 'package:fast_food/common/widgets/login&signup/authentication_title_and_subtitle.dart';
import 'package:fast_food/feature/authenticaton/screen/login&signup/widgets/login_body.dart';
import 'package:fast_food/feature/authenticaton/screen/login&signup/widgets/login_options.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';

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
              AuthenticationTitleAndSubtitle(title: AppText.loginTitle, subTitle: AppText.loginSubTitle,isIcon: true,),

              SizedBox(height: AppSizes.spaceBtwSections),

              //-------[Body Section]--------
              LoginBody(),

              // ------[Footer section]-----
              LoginOptions(),
            ],
          ),
        ),
      ),
    );
  }
}

