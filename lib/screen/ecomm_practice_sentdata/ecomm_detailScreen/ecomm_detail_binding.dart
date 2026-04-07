import 'package:flutter_application_1/screen/ecomm_practice_sentdata/ecomm_detailScreen/ecomm_detailScreen_Controller.dart';
import 'package:get/instance_manager.dart';

class EcommDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EcommDetailscreenController());
  }
}
