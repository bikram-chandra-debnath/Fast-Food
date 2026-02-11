import 'package:fast_food/data/repository/authetication_repository.dart';
import 'package:fast_food/feature/authenticaton/screen/splash/splash_screen.dart';
import 'package:fast_food/myapp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

Future<void> main() async{


  
  // local Storage
await GetStorage.init();
WidgetsBinding widgetsBinding =  WidgetsFlutterBinding.ensureInitialized();

//FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

// Firebase initializeApp
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

