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
    // return Container(
    //   color: Colors.white,
    //   child: Column(
    //     children: [
    //       Container(
    //         height: 80.0,
    //         color: Colors.blue,
    //       ),
    //       Expanded(
    //         child: Container(
    //           color: Colors.yellow,
    //         ),
    //       ),
    //       Container(
    //         height: 80.0,
    //         color: Colors.green,
    //       ),
    //     ],
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Panic View"),
      ),
      body: Container(
        color: Colors.yellow,
        width: Get.width,
        // width: MediaQuery.of(context).size.width,
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

                  setState(() {
                    color = Colors.green;
                    label = "Please, wait!";
                  });
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
      bottomNavigationBar: Container(
        height: 70.0,
        color: Colors.green,
      ),
    );
  }
}
