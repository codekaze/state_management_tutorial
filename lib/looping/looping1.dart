import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Looping1View extends StatefulWidget {
  @override
  _Looping1ViewState createState() => _Looping1ViewState();
}

class _Looping1ViewState extends State<Looping1View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text("Looping 1"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                //----------------
                // var initialValue = 5;
                // var factorial = 1;

                // for (var i = initialValue; i >= 1; i--) {
                //   factorial *= i;
                // }
                // print(factorial);

                // var umurIca = 40;
                // print("Hallo Ica");
                // print("Umur saya $umurIca");
                // log("222222222222222222222222asfkaosfkaosfkaoksfaoksfaoskfasf1201r2");
                //-------------
                //
                //

                // for (var i = 0; i <= 5; i++) {
                //   print("Hello : $i");
                // }

                // print("----------");

                // for (var i = 0; i <= 5; i++) {
                //   if (i % 2 == 0) {
                //     print("Hello : $i");
                //   }
                // }

                // print("----------");

                // List<String> listHewan = [
                //   "Kucing",
                //   "Sapi",
                //   "Kambing",
                //   "Banteng",
                //   "Jerapah",
                //   "Kera",
                //   "Ular",
                // ];

                // for (var i = 0; i < listHewan.length; i++) {
                //   // if (listHewan[i] != "Jerapah") {
                //   //   print(listHewan[i]);
                //   // }

                //   // if (listHewan[i].startsWith("B")) {
                //   //   print(listHewan[i]);
                //   // }

                //   if (listHewan[i].contains("e")) {
                //     print(listHewan[i]);
                //   }
                // }
                //

                List<Map> products = [
                  {
                    "product_name": "Sabun ABC",
                    "price": 14500,
                  },
                  {
                    "product_name": "Kecap ABC",
                    "price": 17500,
                  },
                  {
                    "product_name": "Mama Lemon",
                    "price": 16500,
                  },
                  {
                    "product_name": "Pepsodent",
                    "price": 35000,
                  },
                ];

                for (var i = 0; i < products.length; i++) {
                  var product = products[i];

                  var productName = product["product_name"];
                  var price = product["price"];

                  if (price > 20000) {
                    print(product);
                  }
                }

                print("----------");
              },
              child: Card(
                color: Colors.blue[200],
                child: Container(
                  width: Get.width,
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Test For",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
