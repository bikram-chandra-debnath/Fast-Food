import 'dart:async';

import 'package:fast_food/feature/authenticaton/screen/login/login_screen.dart';
import 'package:fast_food/feature/authenticaton/screen/onboarding/onboarding_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepositor extends GetxController{

  static AuthenticationRepositor get instance => Get.find();

  @override
  void onInit() {
    super.onInit();
    // Navigate after 3 seconds
    Timer(Duration(seconds: 3), () {
      screenRidrict();
    });
  }

  final localStorage = GetStorage();

  void screenRidrict(){
    localStorage.writeIfNull('isFirstTime', true);

    if(localStorage.read("isFirstTime")==true){
      Get.to(()=> OnboardingScreen());
      return;
    }else{
      Get.offAll(()=> LoginScreen());
    }

  }



  }


