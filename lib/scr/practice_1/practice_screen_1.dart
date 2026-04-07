import 'package:flutter/material.dart';
import 'package:flutter_application_1/scr/practice_1/practice_controller_1.dart';
import 'package:get/get.dart';

class PracticeScreen1 extends StatefulWidget {
  const PracticeScreen1({super.key});

  @override
  State<PracticeScreen1> createState() => _PracticeScreen1State();
}

class _PracticeScreen1State extends State<PracticeScreen1> {
  var controller = PracticeController1();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: buildBox()),
          Expanded(child: buildBtns()),
        ],
      ),
    );
  }

  Widget buildBox() {
    return Obx(() {
      var color = controller.selectedColor.value == "red"
          ? Colors.red
          : controller.selectedColor.value == "green"
          ? Colors.green
          : Colors.blue;

      return Center(child: Container(width: 100, height: 100, color: color));
    });
  }

  Widget buildBtns() {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => Text(
            "Color : ${controller.selectedColor.value}",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Row(
          spacing: 5,
          children: [
            GestureDetector(
              onTap: () {
                controller.selectedColor.value = "red";
              },
              child: Container(width: 50, height: 50, color: Colors.red),
            ),
            GestureDetector(
              onTap: () {
                controller.selectedColor.value = "green";
              },
              child: Container(width: 50, height: 50, color: Colors.green),
            ),
            GestureDetector(
              onTap: () {
                controller.selectedColor.value = "blue";
              },
              child: Container(width: 50, height: 50, color: Colors.blue),
            ),
          ],
        ),
      ],
    );
  }
}
