import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:fast_food/utlis/helper/device_helper.dart';
import 'package:flutter/material.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButton(onPressed: () {  }, buttonImage: AppImage.google,),
        SizedBox(width: AppSizes.spaceBtwItems,),
        SocialButton(onPressed: () {  }, buttonImage: AppImage.facebook,),
        SizedBox(width: AppSizes.spaceBtwItems,),
        SocialButton(onPressed: () {  }, buttonImage: AppImage.apple,),
        
       
        
       
      ],
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key, required this.onPressed, required this.buttonImage,
  });

  final VoidCallback onPressed;
  final String buttonImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(5),
        height: DeviceHelper.getScreenWidth(context)/10,
        width: DeviceHelper.getScreenWidth(context)/10,
        decoration: BoxDecoration(
          border: Border.all(width: 1,color: AppColors.darkGrey),
          borderRadius: BorderRadius.circular(10)
        ),
        child: CircleAvatar(foregroundImage: AssetImage(buttonImage),backgroundColor: const Color.fromARGB(0, 35, 35, 35),),
      ),
    );
  }
}

