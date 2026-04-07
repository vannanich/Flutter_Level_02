import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';

class ScreenDiController extends GetxController {
  var a = 0.obs;
  var str = "Hello";
  
  void test() {
    debugPrint("Hello Im from di controller");
  }
}
