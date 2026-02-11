import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppNavigationController extends GetxController{
  static AppNavigationController get instance => Get.find();

  RxInt currentIndex = 0.obs;

   onPageIndexChange (index){
    currentIndex.value = index;
  }

   RxList pages = [

     Center( child: Text("Home page"), ),
     Center( child: Text("search page"), ),
     Center( child: Text("Favourite page"), ),
     Center( child: Text("profile page"), ),

    ].obs;






}