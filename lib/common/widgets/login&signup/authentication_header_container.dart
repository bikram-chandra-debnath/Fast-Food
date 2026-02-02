import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utlis/constrant/app_colors.dart';
import '../../../utlis/constrant/app_image.dart';
import '../../../utlis/constrant/app_size.dart';
import 'authentication_title_and_subtitle.dart';

class CustomAutheticationHeaderContainer extends StatelessWidget {
  const CustomAutheticationHeaderContainer({
    super.key,
    required this.title,
    required this.subtitle,
    this.isback = false,
    this.child = const SizedBox(),
  });

  final String title, subtitle;
  final bool isback;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Container(
        width: double.maxFinite,
        height: 260,
        decoration: BoxDecoration(color: Color(0xff121223)),
        child: Stack(
          children: [

            // dark sun shape
            Positioned(
              top: 0,
              left: 0,
              child: FadeInDown(child: SvgPicture.asset(AppImage.darkSun)),
            ),
            // angle shape
            Positioned(
              top: 0,
              right: 0,
              child: FadeInRight(
                child: SvgPicture.asset(AppImage.victorDesign),
              ),
            ),

            // --------[Header Title and subtitle]-----
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,

              child: FadeInUp(
                child: AuthenticationTitleAndSubtitle(
                  title: title,
                  subTitle: subtitle,
                
                  titleColor: AppColors.white,
                  child: child,
                ),
              ),
            ),

            isback
                ? Positioned(
                  left: AppSizes.defaultSpace,
                  top: AppSizes.defaultSpace * 2,
                  child: IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: AppColors.white,
                      foregroundColor: AppColors.black,
                    ),
                    onPressed: () => Get.back(),
                    icon: Icon(
                      Iconsax.arrow_left_24,
                      color: AppColors.darkGrey,
                    ),
                  ),
                )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final height = size.height;
    final width = size.width;

    path.lineTo(0, height);
    path.quadraticBezierTo(10, height - 30, 40, height - 30);
    path.lineTo(width - 40, height - 30);
    path.quadraticBezierTo(width - 10, height - 30, width, height);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
