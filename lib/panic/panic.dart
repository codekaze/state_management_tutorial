import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PanicView extends StatefulWidget {
  @override
  _PanicViewState createState() => _PanicViewState();
}

class _PanicViewState extends State<PanicView> {
  Color color = Colors.red;
  String label = "Help";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Panic View"),
      ),
      body: Container(
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                if (color == Colors.red) {
                  color = Colors.green;
                  label = "Please, wait!";
                  setState(() {});
                } else if (color == Colors.green) {
                  color = Colors.red;
                  label = "Help";
                  setState(() {});
                }
              },
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
