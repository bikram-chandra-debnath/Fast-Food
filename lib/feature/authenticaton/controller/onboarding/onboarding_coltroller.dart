
import 'package:fast_food/feature/authenticaton/screen/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingColtroller extends  GetxController{

  static OnboardingColtroller get instance => Get.find();

  final pageController = PageController();

  RxInt currentIndex = 0.obs;

   // update current indext when page scroll
  void updatePageIndicator (index){
    currentIndex.value= index;
  }

 // update pagen on dot click
 
 void dotNavigationClick (index){
    currentIndex.value= index;
    pageController.jumpToPage(index);
  }
 //// next page
  void nextPage (){

    currentIndex.value < 2
        ? currentIndex.value++
        : Get.offAll(LoginScreen());
    pageController.jumpToPage(currentIndex.value);
  }
  //  jump to the last page
  void skipPage(){
    currentIndex.value =2;
    pageController.jumpToPage(currentIndex.value);
  } 


  

}