
import 'package:fast_food/feature/authenticaton/screen/onboarding/onboarding_screen.dart';
import 'package:fast_food/utlis/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home:  OnboardingScreen(),
    );
  }
}