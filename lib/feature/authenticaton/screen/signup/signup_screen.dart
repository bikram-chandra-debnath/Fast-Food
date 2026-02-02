import 'package:fast_food/common/widgets/login&signup/authentication_header_container.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ---------[Header section]------
            CustomAutheticationHeaderContainer(
              isback: true,
              title: AppText.signUpTitle,
              subtitle: AppText.signUpSubTitle,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // ---------[Body section]------
                  SignupBody(),

                  //---------[Footer section]------

                  // check box & terms
                  SignupFooter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
