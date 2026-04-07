import 'package:flutter/material.dart';

class EcommFirstscreen extends StatefulWidget {
  const EcommFirstscreen({super.key});

  @override
  State<EcommFirstscreen> createState() => _EcommFirstscreenState();
}

class _EcommFirstscreenState extends State<EcommFirstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Good Morning , Celin",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          Badge.count(count: 10, child: Icon(Icons.notification_add)),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [_buildHeader()]),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: const Color.fromARGB(255, 152, 190, 189),

          child: Padding(
            padding: const EdgeInsetsGeometry.only(left: 20, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " New Collection ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      " Discount 50% for \n the first transation ",
                      style: TextStyle(color: Colors.grey[600], fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(10),
                        ),
                      ),

                      child: Image.asset(
                        "lib/assets/cb_400_1.jpg",
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text("ths is for row"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
