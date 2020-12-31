import 'package:get/get.dart';

class Controller extends GetxController {
  static Controller get to => Get.find();
  int counter = 0;
  void incrementCounter() {
    counter++;
    update();
  }
}
