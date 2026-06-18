import 'package:get/get.dart';

class DetailsController extends GetxController {
  static DetailsController get instance => Get.find();

  RxInt current = 0.obs;
  RxInt size = 0.obs;
  RxInt quantity = 1.obs;
  

  void changeIndex(index) {
    current.value = index;
  }

  void selectSize(index) {
    size.value = index;
  }

  void increaseQuantity() {
    quantity.value++;
  }

  void decreaseQuantity() {
    if (quantity.value > 1) {
      quantity.value--;
    }
  }
}
