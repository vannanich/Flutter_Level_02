import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/homescreen/home_2_controller.dart';
import 'package:get/get.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX(
      // GetX is reactive widget 
      init: Home2Controller(),
      // controller is object of GetX so we can change what ever we want
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("count: ${controller.count}"),
                    ElevatedButton(
                      onPressed: () {
                        controller.count.value;
                      },
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
