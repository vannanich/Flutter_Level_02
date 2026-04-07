import 'package:flutter_application_1/screen/ecomm_practice_sentdata/ecomm_homescreen/ecomm_homescreen_controller.dart';
import 'package:get/instance_manager.dart';

class EcommHomescreenBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => EcommHomescreenController());
  }
}
