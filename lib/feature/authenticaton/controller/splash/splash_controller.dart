import 'package:get/get.dart';

import '../../screen/onboarding/onboarding_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() =>  OnboardingScreen());
    });
  }
}

