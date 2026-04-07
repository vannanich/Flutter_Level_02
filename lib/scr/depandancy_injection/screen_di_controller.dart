import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenDiController extends GetxController {
  var a = 0.obs;

  var str = "Hello";

  void test() {
    debugPrint("hello from controller");
  }
}
