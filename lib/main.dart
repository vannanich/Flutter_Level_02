import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/dependency_injection_example/screen_di_1.dart';
import 'package:flutter_application_1/screen/dependency_injection_example/screen_di_2.dart';
import 'package:flutter_application_1/screen/dependency_injection_example/screen_di_controller.dart';
import 'package:flutter_application_1/screen/ecomm_practice_sentdata/ecomm_detailScreen/ecomm_detailScreen.dart';
import 'package:flutter_application_1/screen/ecomm_practice_sentdata/ecomm_detailScreen/ecomm_detail_binding.dart';
import 'package:flutter_application_1/screen/ecomm_practice_sentdata/ecomm_first_screen/ecomm_firstScreen.dart';
import 'package:flutter_application_1/screen/ecomm_practice_sentdata/ecomm_homescreen/ecomm_homescreen.dart';
import 'package:flutter_application_1/screen/ecomm_practice_sentdata/ecomm_homescreen/ecomm_homescreen_binding.dart';
import 'package:flutter_application_1/screen/test_3_file_inOnescreen/counter_app_binding.dart';
import 'package:flutter_application_1/screen/test_3_file_inOnescreen/couter_app_view.dart';
import 'package:get/get.dart';

void main() {
  //  put
  // Get.put(ScreenDiController());

  // lazy put
  Get.lazyPut(() => ScreenDiController());

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ScreenDi1(),
      initialRoute: "/ecomdetail",
      getPages: [
        GetPage(name: "/screen1", page: () => ScreenDi1()),
        GetPage(
          name: "/screen2",
          page: () => ScreenDi2(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 6),
          bindings: [EcommHomescreenBinding(), EcommDetailBinding()],
        ),
        GetPage(
          name: "/ecomhome",
          page: () => EcommHomescreen(),
          transition: Transition.zoom,
          transitionDuration: Duration(seconds: 2),
        ),
        GetPage(
          name: "/ecomdetail",
          page: () => EcommDetailscreen(),
          binding: EcommDetailBinding(),
        ),
        GetPage(
          name: "/ecommfirstScreen",
          page: () => EcommFirstscreen(),
          binding: EcommDetailBinding(),
        ),
        GetPage(
          name: "/counterApp",
          page: () => CouterAppView(),
          binding: CounterAppBinding(),
        ),
      ],
    );
  }
}
