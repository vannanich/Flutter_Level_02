import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';

class ScreenDi2 extends StatefulWidget {
  const ScreenDi2({super.key});

  @override
  State<ScreenDi2> createState() => _ScreenDi2State();
}

class _ScreenDi2State extends State<ScreenDi2> {
  var agr = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: AppBar(title: Text("screen 2")),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Text(agr[2]),
                SizedBox(height: 20),
                ElevatedButton(
                  // when back to screen 1 it will be show data from screen 2 like this , Hello from screen 2
                  onPressed: () {
                    Get.back(result: "Hello from screen 2");
                  },
                  child: Text("Back to screen 1"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
