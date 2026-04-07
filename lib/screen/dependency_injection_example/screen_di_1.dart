import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/dependency_injection_example/screen_di_controller.dart';
import 'package:get/get.dart';

class ScreenDi1 extends StatefulWidget {
  const ScreenDi1({super.key});

  @override
  State<ScreenDi1> createState() => _ScreenDi1State();
}

class _ScreenDi1State extends State<ScreenDi1> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.find<ScreenDiController>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          controller.a++;
        },
        child: Icon(Icons.add),
      ),
      // body: Center(child: Text(controller.str)),
      // body: Center(child: Obx(() => Text("${controller.a}"))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  // it can not touch for close the bottomsheet need user it click some button or ccomplete something
                  // isDismissible:false,
                  // enableDrag: false,
                  Container(
                    height: Get.height / 2,
                    width: Get.width,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Center(child: Text("Testing")),
                  ),
                );
              },
              child: Text("Open Sheet"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                // create variable for jab data from screen 2
                var result = await Get.toNamed(
                  "/screen2",
                  arguments: ["Hello", "Hello1", "Hello2"],
                );
                debugPrint("result : $result");
              },
              child: Text("Go to screen 2"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.dialog(
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(height: 100, color: Colors.amber),
                    ),
                  ),
                );
              },
              child: Text("Open diolog"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "this is my title",
                  "nothing",
                  duration: Duration(milliseconds: 5),
                );
              },
              child: Text("Open snackBar"),
            ),
          ],
        ),
      ),
    );
  }
}
