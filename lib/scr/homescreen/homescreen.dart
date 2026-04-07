import 'package:flutter/material.dart';
import 'package:flutter_application_1/scr/homescreen/homescreen_controller.dart';
import 'package:get/get.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return GetX(
      //GetX is Reactive Widget
      init: HomescreenController(),
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: Get.height / 2, color: Colors.red),
                Text("Count : ${controller.count.value}"),
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
      },
    );
  }
}
