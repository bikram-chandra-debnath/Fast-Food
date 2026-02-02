import 'package:fast_food/feature/authenticaton/screen/login/widgets/login_body.dart';
import 'package:fast_food/feature/authenticaton/screen/login/widgets/login_options.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/login&signup/authentication_header_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // header section
            CustomAutheticationHeaderContainer(
              title: AppText.loginTitle,
              subtitle: AppText.loginSubTitle,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
              child: Column(
                children: [
                  //-------[Body Section]--------
                  LoginBody(),

                  // ------[Footer section]-----
                  LoginOptions(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
