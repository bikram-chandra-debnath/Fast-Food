
import 'package:get/get.dart';

class CartController extends GetxController {
  static CartController get instance => Get.find();

  RxBool isNotEdit = true.obs;


  
  RxInt totalPrice = 16.obs;

  List<Map<String, dynamic>> cartItem = [
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
      "restaurant": "Rose Garden Restaurant",
      "image":
          "https://media.istockphoto.com/id/1414575281/photo/a-delicious-and-tasty-italian-pizza-margherita-with-tomatoes-and-buffalo-mozzarella.webp?a=1&b=1&s=612x612&w=0&k=20&c=qO_TA5oZTY4d1e14l6noMYmAB26sSoE8L0m_VYl2bcU=",
      "name": "Pizza Margherita",
      "description":
          "Classic Italian pizza topped with fresh mozzarella, basil leaves, and tomato sauce.",
      "rate": 4.8,
      "time": 15,
      "Size": ["10\"", "12\"", "14\""],
      "price": 9,
    },
  ];

}
