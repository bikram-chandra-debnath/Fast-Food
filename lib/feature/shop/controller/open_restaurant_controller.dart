import 'package:get/get.dart';

class OpenRestaurantController extends GetxController {
  static OpenRestaurantController get instance => Get.find();

  List<Map<String, dynamic>> openRestaurants = [
    {
      "image":
          "https://images.unsplash.com/photo-1414235077428-338989a2e8c0?q=80&w=1170&auto=format&fit=crop",
      "title": "Rose Garden Restaurant",
      "subtitle": "Burger - Chicken - Rice - Wings",
      "description":
          "Maecenas sed diam eget rusus varius blandit sit amet non magna. Integer posure",
      "rate": 4.7,
      "time": 15,
      "menu": [
        {
          "category": "Burger",
          "bugers": [
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
          ],
        },
        {
          "category": "Pizza",
          "pizzas": [
            {
              "restaurant": "Italiano Express",
              "image":
                  "https://t3.ftcdn.net/jpg/01/23/45/67/240_F_123456789_abCdEfGhIjKlMnOpQr.jpg",
              "name": "Margherita Pizza",
              "description":
                  "Classic pizza with fresh mozzarella, basil, and tomato sauce.",
              "rate": 4.8,
              "time": 20,
              "Size": ["S", "M", "L"],
              "price": 12,
            },
            {
              "restaurant": "Pizza Palace",
              "image":
                  "https://t4.ftcdn.net/jpg/02/34/56/78/240_F_234567890_QwErTyUiOpAsDfGhJk.jpg",
              "name": "Pepperoni Feast",
              "description":
                  "Loaded with spicy pepperoni slices and extra cheese.",
              "rate": 4.6,
              "time": 18,
              "Size": ["M", "L"],
              "price": 14,
            },
          ],
        },
        {
          "category": "Biryani",
          "biryani": [
            {
              "restaurant": "Royal Spice Kitchen",
              "image":
                  "https://t5.ftcdn.net/jpg/03/45/67/89/240_F_345678901_LmNoPqRsTuVwXyZaBc.jpg",
              "name": "Hyderabadi Biryani",
              "description":
                  "Fragrant basmati rice cooked with marinated chicken and aromatic spices.",
              "rate": 5.0,
              "time": 25,
              "Size": ["M", "L"],
              "price": 10,
            },
            {
              "restaurant": "Dhaka Delights",
              "image":
                  "https://t6.ftcdn.net/jpg/04/56/78/90/240_F_456789013_XyZaBcDeFgHiJkLmNo.jpg",
              "name": "Beef Biryani",
              "description":
                  "Rich and flavorful beef biryani with saffron and caramelized onions.",
              "rate": 4.7,
              "time": 30,
              "Size": ["L"],
              "price": 13,
            },
          ],
        },
        {
          "category": "Drinks",
          "drinks": [
            {
              "restaurant": "Cool Café",
              "image":
                  "https://t7.ftcdn.net/jpg/05/67/89/01/240_F_567890145_PoMnLkJiHgFeDcBaQw.jpg",
              "name": "Mango Smoothie",
              "description": "Fresh mango blended with yogurt and honey.",
              "rate": 4.9,
              "time": 5,
              "Size": ["S", "M"],
              "price": 4,
            },
            {
              "restaurant": "Chill Spot",
              "image":
                  "https://t8.ftcdn.net/jpg/06/78/90/12/240_F_678901234_RsTuVwXyZaBcDeFgHi.jpg",
              "name": "Iced Latte",
              "description": "Cold coffee with milk and a touch of vanilla.",
              "rate": 4.6,
              "time": 7,
              "Size": ["S", "M", "L"],
              "price": 5,
            },
          ],
        },
      ],
    },
    // {
    //   "image":
    //       "https://images.unsplash.com/photo-1555992336-03a23c3bf1c4?q=80&w=1170&auto=format&fit=crop",
    //   "title": "Italiano Express",
    //   "subtitle": "Pizza - Pasta - Salad",
    //   "description":
    //       "Authentic Italian flavors with freshly baked pizzas and homemade pasta.",
    //   "rate": 4.8,
    //   "time": 20,
    //   "menu": [
    //     {
    //       "category": "Pizza",
    //       "pizzas": [
    //         {
    //           "restaurant": "Italiano Express",
    //           "image":
    //               "https://t3.ftcdn.net/jpg/01/23/45/67/240_F_123456789_abCdEfGhIjKlMnOpQr.jpg",
    //           "name": "Margherita Pizza",
    //           "description":
    //               "Classic pizza with fresh mozzarella, basil, and tomato sauce.",
    //           "rate": 4.8,
    //           "time": 20,
    //           "Size": ["S", "M", "L"],
    //           "price": 12,
    //         },
    //         {
    //           "restaurant": "Italiano Express",
    //           "image":
    //               "https://t4.ftcdn.net/jpg/02/34/56/78/240_F_234567890_QwErTyUiOpAsDfGhJk.jpg",
    //           "name": "Pepperoni Feast",
    //           "description":
    //               "Loaded with spicy pepperoni slices and extra cheese.",
    //           "rate": 4.6,
    //           "time": 18,
    //           "Size": ["M", "L"],
    //           "price": 14,
    //         },
    //       ],
    //     },
    //   ],
    // },
    // {
    //   "image":
    //       "https://images.unsplash.com/photo-1604908177522-040d6c7f7f7f?q=80&w=1170&auto=format&fit=crop",
    //   "title": "Royal Spice Kitchen",
    //   "subtitle": "Biryani - Curry - Kebabs",
    //   "description":
    //       "Traditional South Asian cuisine with aromatic spices and rich flavors.",
    //   "rate": 5.0,
    //   "time": 25,
    //   "menu": [
    //     {
    //       "category": "Biryani",
    //       "biryani": [
    //         {
    //           "restaurant": "Royal Spice Kitchen",
    //           "image":
    //               "https://t5.ftcdn.net/jpg/03/45/67/89/240_F_345678901_LmNoPqRsTuVwXyZaBc.jpg",
    //           "name": "Hyderabadi Biryani",
    //           "description":
    //               "Fragrant basmati rice cooked with marinated chicken and aromatic spices.",
    //           "rate": 5.0,
    //           "time": 25,
    //           "Size": ["M", "L"],
    //           "price": 10,
    //         },
    //         {
    //           "restaurant": "Royal Spice Kitchen",
    //           "image":
    //               "https://t6.ftcdn.net/jpg/04/56/78/90/240_F_456789013_XyZaBcDeFgHiJkLmNo.jpg",
    //           "name": "Beef Biryani",
    //           "description":
    //               "Rich and flavorful beef biryani with saffron and caramelized onions.",
    //           "rate": 4.7,
    //           "time": 30,
    //           "Size": ["L"],
    //           "price": 13,
    //         },
    //       ],
    //     },
    //   ],
    // },
    // {
    //   "image":
    //       "https://images.unsplash.com/photo-1504674900247-0877df9cc836?q=80&w=1170&auto=format&fit=crop",
    //   "title": "Cool Café",
    //   "subtitle": "Coffee - Smoothies - Desserts",
    //   "description": "A cozy café serving refreshing drinks and sweet treats.",
    //   "rate": 4.6,
    //   "time": 10,
    //   "menu": [
    //     {
    //       "category": "Drinks",
    //       "drinks": [
    //         {
    //           "restaurant": "Cool Café",
    //           "image":
    //               "https://t7.ftcdn.net/jpg/05/67/89/01/240_F_567890145_PoMnLkJiHgFeDcBaQw.jpg",
    //           "name": "Mango Smoothie",
    //           "description": "Fresh mango blended with yogurt and honey.",
    //           "rate": 4.9,
    //           "time": 5,
    //           "Size": ["S", "M"],
    //           "price": 4,
    //         },
    //         {
    //           "restaurant": "Cool Café",
    //           "image":
    //               "https://t8.ftcdn.net/jpg/06/78/90/12/240_F_678901234_RsTuVwXyZaBcDeFgHi.jpg",
    //           "name": "Iced Latte",
    //           "description": "Cold coffee with milk and a touch of vanilla.",
    //           "rate": 4.6,
    //           "time": 7,
    //           "Size": ["S", "M", "L"],
    //           "price": 5,
    //         },
    //       ],
    //     },
    //   ],
    // },
  ];
}
