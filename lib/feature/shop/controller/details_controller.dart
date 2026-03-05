import 'package:get/get.dart';

class DetailsController extends GetxController {
  static DetailsController get instance => Get.find();

  RxInt current = 0.obs;

  void changeIndex(index) {
    current.value = index;
  }
}

