import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/ecomm_practice_sentdata/ecomm_detailScreen/ecomm_detailScreen_Controller.dart';
import 'package:get/get.dart';

class EcommDetailscreen extends GetView<EcommDetailscreenController> {
  const EcommDetailscreen({super.key});

  // var controller = EcommDetailscreenController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
        actions: [
          Obx(
            () => Badge.count(
              count: controller.count.value,
              child: Icon(Icons.shopping_cart),
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          SizedBox(height: 200, child: Image.network(Get.arguments["image"])),
          Text(Get.arguments["title"]),
          Text("Price : ${Get.arguments["price"]}\$"),
          ElevatedButton(
            onPressed: () {
              controller.count.value++;
            },
            child: Text("Add to card"),
          ),
        ],
      ),
    );
  }
}
