import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/homescreen/practice_01/practice_01_controller.dart';
import 'package:get/get.dart';

class PracticeScreen1 extends StatefulWidget {
  const PracticeScreen1({super.key});

  @override
  State<PracticeScreen1> createState() => _PracticeScreen1State();
}

class _PracticeScreen1State extends State<PracticeScreen1> {
  // var controller = PracticeController1();
  final controller = Get.put(Practice01Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 200),
          buildBox(),
          SizedBox(height: 20),
          buildBtns(),
          SizedBox(height: 20),
          _BuildSize(),
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

      return Center(
        child: Container(
          width: controller.selectedSize.value.toDouble(),
          height: controller.selectedSize.value.toDouble(),
          color: color,
        ),
      );
    });
  }

  Widget buildBtns() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
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
                  controller.selectedColor.value = "black";
                },
                child: Container(width: 50, height: 50, color: Colors.black),
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
      ),
    );
  }

  Widget _BuildSize() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              OutlinedButton(
                onPressed: () {
                  controller.selectedSize.value = 100;
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(3),
                  ),
                ),
                child: Text("100"),
              ),
              SizedBox(width: 20),
              OutlinedButton(
                onPressed: () {
                  controller.selectedSize.value = 200;
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(3),
                  ),
                ),
                child: Text("200"),
              ),
              SizedBox(width: 20),
              OutlinedButton(
                onPressed: () {
                  controller.selectedSize.value = 300;
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(3),
                  ),
                ),
                child: Text("300"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
