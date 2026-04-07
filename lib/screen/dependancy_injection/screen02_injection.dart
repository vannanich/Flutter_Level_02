import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/dependancy_injection/screen_injection_controller.dart';

class Screen02Injection extends StatefulWidget {
  final ScreenInjectionController controller;
  const Screen02Injection({super.key, required this.controller});

  @override
  State<Screen02Injection> createState() => _Screen02InjectionState();
}

class _Screen02InjectionState extends State<Screen02Injection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("screen 02"));
  }
}
