import 'package:get/get.dart';

class CartController extends GetxController {
  var price = 0.obs;

  addMoney(value) {
    price.value++;
  }
}
