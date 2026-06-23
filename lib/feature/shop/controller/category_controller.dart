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
  List<Map<String, dynamic>> popularBurger = [
    {
      "restaurant": "Rose Garden Restaurant",
      "image":
          "https://t4.ftcdn.net/jpg/02/74/99/01/240_F_274990113_ffVRBygLkLCZAATF9lWymzE6bItMVuH1.jpg",
      "name": "Burger Ferguson",
      "description":
          "Prosciutto e funghi in a burger variety that is topped with tomato sauce.",
      "rate": 5.0,
      "time": 10,
      "Size": ["S", "M", "L"],
      "price": 7,
    },
    {
      "restaurant": "Urban Grill House",
      "image":
          "https://t3.ftcdn.net/jpg/19/79/15/00/240_F_1979150054_4JOiLuO1u0VBHgcCaybN1IV1sU5VzeZy.jpg",
      "name": "Smoky BBQ Burger",
      "description":
          "Juicy beef patty layered with cheddar cheese, crispy onions, and smoky barbecue sauce.",
      "rate": 4.7,
      "time": 15,
      "Size": ["M", "L"],
      "price": 9,
    },
    {
      "restaurant": "Green Bite Café",
      "image":
          "https://t4.ftcdn.net/jpg/09/97/94/87/240_F_997948786_zCgmZbGlFazP5V5VyettYhSM5HWCDopl.jpg",
      "name": "Veggie Delight Burger",
      "description":
          "Grilled vegetable patty with avocado, lettuce, tomato, and a light yogurt dressing.",
      "rate": 4.5,
      "time": 12,
      "Size": ["S", "M"],
      "price": 6,
    },
    {
      "restaurant": "Classic Diner",
      "image":
          "https://t3.ftcdn.net/jpg/03/34/88/16/240_F_334881645_vLmn5Hs1YyIYY1r0fcGGNAGZ0HL4ix8T.jpg",
      "name": "Cheese Lover's Burger",
      "description":
          "Double beef patty stacked with layers of melted mozzarella, cheddar, and Swiss cheese.",
      "rate": 4.9,
      "time": 18,
      "Size": ["M", "L"],
      "price": 11,
    },
  ];
}
