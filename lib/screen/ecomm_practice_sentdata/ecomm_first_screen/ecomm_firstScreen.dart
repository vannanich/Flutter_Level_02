import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/product_data.dart';
import 'package:flutter_application_1/screen/ecomm_practice_sentdata/ecomm_homescreen/ecomm_homescreen_controller.dart';
import 'package:get/get.dart';

class EcommFirstscreen extends GetView<EcommHomescreenController> {
  const EcommFirstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Good Morning , Celin",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          Badge.count(count: 10, child: Icon(Icons.notification_add)),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeader(),
              SizedBox(height: 10),
              _buildBody(),
              SizedBox(height: 5),
              _buildFooter(),
              SizedBox(height: 30),
              _buildGrid(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 220,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 152, 190, 189),
            borderRadius: BorderRadius.circular(20),
          ),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " New Collection ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      " Discount 50% for \n the first transation ",
                      style: TextStyle(color: Colors.grey[600], fontSize: 16),
                    ),
                    SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(12),
                        ),
                      ),
                      child: Text(
                        "Shop Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 180,
                    child: Image.asset(
                      "assets/model1-removebg-preview (1).png",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    List<String> categoryTitle = [
      "Armcuffs",
      "Bracket",
      "Earing",
      "Shoes",
      "Top sales",
      "Ring",
      "Fashion Glass",
      "Ring",
    ];
    List<String> imageList = [
      "assets/armcuffs.jpg",
      "assets/bracket.jpg",
      "assets/earing.jpg",
      "assets/kongdai.jpg",
      "assets/idk.png",
      "assets/model1.jpg",
      "assets/fashionGlass.jpg",
      "assets/ring.jpg",
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Category",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 100,
          // child: ListView.builder(
          //   itemCount: 8,
          //   scrollDirection: Axis.horizontal,
          //   itemBuilder: (context, index) {
          //     return Container(
          //       width: 60,
          //       // height: 100,
          //       margin: const EdgeInsets.only(right: 20),
          //       decoration: BoxDecoration(
          //         image: DecorationImage(
          //           image: AssetImage(imageList[index]),
          //           fit: BoxFit.cover,
          //         ),
          //         color: Colors.brown,
          //         borderRadius: BorderRadius.circular(50),
          //       ),
          //     );
          //   },
          // ),
          child: ListView.builder(
            itemCount: 8,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imageList[index]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      categoryTitle[index], // <-- your category name list
                      style: const TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Top Sales",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Spacer(),
            Icon(Icons.star_border),
            Icon(Icons.star, color: Colors.amber),
            Icon(Icons.star, color: Colors.amber),
            Icon(Icons.star, color: Colors.amber),
            Icon(Icons.star, color: Colors.amber),
          ],
        ),
      ],
    );
  }

  Widget _buildGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
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
                child: Image.network(
                  product[index]["image"].toString(),
                  fit: BoxFit.cover,
                ),
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
    );
  }
}
