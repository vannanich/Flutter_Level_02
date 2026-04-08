import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/test_3_file_inOnescreen/counter_app_controller.dart';
import 'package:get/get.dart';

// GetView meant go to find controller , it has controller or not
class CouterAppView extends GetView<CounterAppController> {
  const CouterAppView({super.key});

  // var controller = CounterAppController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        actions: [
          Badge.count(count: 10, child: Icon(Icons.notifications)),
          SizedBox(width: 10),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "counter : ${controller.count.value}",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Obx(() => ,)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(5),
                  ),
                ),
                onPressed: () {
                  // controller.count.value++;
                  controller.increment();
                },
                child: Text(
                  "Increments",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(5),
                  ),
                ),
                onPressed: () {
                  // controller.count.value--;
                  controller.decrements();
                },
                child: Text(
                  "Decrements",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // controller.count.value = 0;
                  controller.reset();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(5),
                  ),
                ),

                child: Text(
                  "reset",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
