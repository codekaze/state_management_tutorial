/*
Tugas-nya:


Widget Terkait [Clue]:
InkWell
Get.width
IF Statement
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tugas1View extends StatefulWidget {
  @override
  _Tugas1ViewState createState() => _Tugas1ViewState();
}

class _Tugas1ViewState extends State<Tugas1View> {
  String imageSource =
      "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1616565964/011806600_1611383440-EsRUFLjU0AEggnI-700x1037_pkpk83.jpg";
  double width = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Tugas 1"),
      ),
      body: Center(
        child: Image.network(
          imageSource,
          width: 100,
        ),
      ),
    );
  }
}
