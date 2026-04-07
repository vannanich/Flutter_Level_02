import 'package:flutter/material.dart';
import 'package:flutter_application_1/scr/homescreen/homescreen_controller.dart';
import 'package:get/get.dart';

class Homescreen2 extends StatefulWidget {
  const Homescreen2({super.key});

  @override
  State<Homescreen2> createState() => _Homescreen2State();
}

class _Homescreen2State extends State<Homescreen2> {
  var controller = HomescreenController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("Count : ${controller.count.value}")),
            ElevatedButton(
              onPressed: () {
                controller.count.value++;
                // controller.count.value = controller.count.value + 1;
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
