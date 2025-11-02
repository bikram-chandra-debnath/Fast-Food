import 'package:fast_food/feature/authenticaton/screen/onboarding/widgets/onboarding_title_and_subtitle.dart';
import 'package:fast_food/utlis/helper/device_helper.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });

   final String image,title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: DeviceHelper.getScreenHeight(context),
          width: DeviceHelper.getScreenWidth(context),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
    
        Container(
          height: DeviceHelper.getScreenHeight(context),
          width: DeviceHelper.getScreenWidth(context),
    
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                const Color.fromARGB(0, 0, 0, 0),
                const Color.fromARGB(180, 0, 0, 0),
                const Color.fromARGB(200, 0, 0, 0),
                const Color.fromARGB(255, 0, 0, 0),
              ],
            ),
          ),
        ),
        // onboarding title and sub title
        OnboardingTitleAndSubtitle(title: title , subTitle: subTitle,),
    
   

       ],
    );
  }
}

