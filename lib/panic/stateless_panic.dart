import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatelessPanicView extends StatelessWidget {
  final Color color = Colors.red;
  final String label = "Help";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Stateless Panic View"),
      ),
      body: Container(
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                radius: 100.0,
                backgroundColor: color,
                child: Text(
                  "$label",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
