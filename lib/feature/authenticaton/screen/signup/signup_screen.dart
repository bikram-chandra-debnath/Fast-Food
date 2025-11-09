import 'package:fast_food/common/widgets/login&signup/authentication_title_and_subtitle.dart';
import 'package:fast_food/feature/authenticaton/screen/signup/widgets/signup_footer.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';

import 'widgets/signup_body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ---------[Header section]------
              AuthenticationTitleAndSubtitle(
                title: AppText.signUpTitle,
                subTitle: AppText.signUpSubTitle,
              ),
              SizedBox(height: AppSizes.spaceBtwSections),

              // ---------[Body section]------
              SignupBody(),

              //---------[Footer section]------

              // check box & terms
              SignupFooter(),
            ],
          ),
        ),
      ),
    );
  }
}

