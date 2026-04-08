import 'package:get/get.dart';

class CounterAppController extends GetxController {
  var count = 0.obs;

  void increment() {
    count.value++;
  }

  void decrements() {
    if (count.value > 0) {
      count.value--;
    }
  }
  void reset() {
    if (count.value > 0) {
      count.value=0;
    }
  }
}
