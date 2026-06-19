import 'package:fast_food/utlis/constrant/app_image.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

  List<Map<String, dynamic>> category = [
    {"title": "Burger", "image": AppImage.burger, "start": "7"},
    {"title": "Pizza", "image": "assets/products/pizza.png", "start": "12"},
    {"title": "Briyani", "image": "assets/products/biryani.png", "start": "10"},
    {
      "title": "Chicken Fry",
      "image": "assets/products/fried-chicken.png",
      "start": "5",
    },
    {
      "title": "Ice-cream",
      "image": "assets/products/ice-cream.png",
      "start": "3",
    },
  ];
}
