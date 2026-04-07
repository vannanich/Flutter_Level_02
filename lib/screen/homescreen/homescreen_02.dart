import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/homescreen/home_2_controller.dart';
import 'package:get/get.dart';

class Homescreen02 extends StatefulWidget {
  const Homescreen02({super.key});

  @override
  State<Homescreen02> createState() => _Homescreen02State();
}

class _Homescreen02State extends State<Homescreen02> {
  var controller = Home2Controller();
  @override
  Widget build(BuildContext context) {
    everAll([controller.count, controller.count2], (callback) {
      debugPrint("everAll is called ");
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Obx(() => Text("count: ${controller.count.value}")),
                ElevatedButton(
                  onPressed: () {
                    controller.count.value++;
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
