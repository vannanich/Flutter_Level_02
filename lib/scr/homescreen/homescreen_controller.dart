import 'package:get/get.dart';

class HomescreenController extends GetxController {
  // int count = 0;

  //reactive variable or rx variable
  RxInt count = 0.obs;
  RxString str = "".obs;
  //rx dart
  var rdStr = Rx<String>("");

  var rxVar = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
}
