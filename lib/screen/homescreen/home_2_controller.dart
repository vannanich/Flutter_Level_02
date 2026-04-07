import 'package:get/state_manager.dart';

class Home2Controller extends GetxController {
  // count it will be work if it is a reactive variable : reactive variable it end with obs
  RxInt c = 0.obs;
  int b = 9;
  // RxInt same as int but RxInt is update data but int no update data

  RxInt count = 0.obs;
  RxInt count2 = 0.obs;
  RxString str = "".obs;

  var rxVar = 0.obs;




// onInit and onReady work only one time and work mun ke 
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

  // onClose use when we close program what we wanna make it do 

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
  
}
