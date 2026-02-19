
import 'package:get/get.dart';

class CartController extends GetxController {
  static CartController get instance => Get.find();

  RxBool isNotEdit = true.obs;

}
