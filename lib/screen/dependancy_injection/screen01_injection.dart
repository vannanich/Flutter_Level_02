import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/dependancy_injection/screen_injection_controller.dart';

class Screen01Injection extends StatefulWidget {
  final ScreenInjectionController controller;
  const Screen01Injection({super.key, required this.controller});

  @override
  State<Screen01Injection> createState() => _Screen01InjectionState();
}

class _Screen01InjectionState extends State<Screen01Injection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("screen 1"));
  }
}
