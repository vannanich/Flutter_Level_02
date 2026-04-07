import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ScreenDi1 extends StatelessWidget {
  const ScreenDi1({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => ScreenDiController());
    // var controller = Get.find<ScreenDiController>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Get.offAll(ScreenDi2()); // next screen and delete all
                Get.toNamed(
                  "/screen2",
                  arguments: "hello from screen 1, hello",
                ); // next screen
                // Get.off(ScreenDi2());  // next screen and connot back
                // Get.back(); // back
              },
              child: Text("Go to Next Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  // isDismissible: false,
                  // enableDrag: false,
                  Container(
                    height: Get.height / 2,
                    width: Get.width,
                    color: Colors.white,
                    child: Text("Hello"),
                  ),
                );
              },
              child: Text("Open Btm sheet"),
            ),

            ElevatedButton(
              onPressed: () {
                Get.dialog(
                  // barrierDismissible: false,
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(height: 100, color: Colors.amber),
                    ),
                  ),
                );
              },
              child: Text('Open Dialog'),
            ),

            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  snackPosition: SnackPosition.TOP,
                  "title",
                  "message",
                  backgroundColor: Colors.amberAccent,
                );
              },
              child: Text("Open Snackbar"),
            ),
          ],
        ),
      ),
    );
  }
}
