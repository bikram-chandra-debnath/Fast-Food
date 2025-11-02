import 'package:flutter/material.dart';

class AppHelper {
  AppHelper._();



  static bool isDarkMode (BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;

  }
}