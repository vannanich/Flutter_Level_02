import 'package:flutter_application_1/screen/test_3_file_inOnescreen/counter_app_controller.dart';
import 'package:get/instance_manager.dart';

class CounterAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CounterAppController());
  }
}
