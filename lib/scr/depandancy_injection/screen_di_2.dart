import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenDi2 extends StatelessWidget {
  const ScreenDi2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title: Text("Screen 2")),
      body: Center(child: Text(Get.arguments)),
    );
  }
}
