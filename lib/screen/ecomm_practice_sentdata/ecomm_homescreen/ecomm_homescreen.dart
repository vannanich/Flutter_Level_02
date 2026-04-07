import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/product_data.dart';
import 'package:flutter_application_1/screen/ecomm_practice_sentdata/ecomm_homescreen/ecomm_homescreen_controller.dart';
import 'package:get/get.dart';

class EcommHomescreen extends GetView<EcommHomescreenController> {
  const EcommHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Homescreen")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // 1 row mean man item ??
            crossAxisCount: 2,
            // kom not height
            mainAxisExtent: 150,
            // space pi 1 item to 1 item pi chhveng tv sdam
            crossAxisSpacing: 20,
            // space pi 1 item to 1 item pi ler tv krom
            mainAxisSpacing: 20,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.toNamed("/ecomdetail", arguments: product[index]);
              },
              child: Column(
                children: [
                  Expanded(
                    child: Image.network(product[index]["image"].toString()),
                  ),
                  Text(
                    product[index]["title"].toString(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "Price : ${product[index]["price"].toString()}\$",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
