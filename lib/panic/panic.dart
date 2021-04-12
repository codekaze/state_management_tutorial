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
          children: [
            Container(
              color: Colors.green,
              width: Get.width,
              child: Text(
                "Downloads",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              height: 200.0,
              color: Colors.blue[100],
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Teks 1"),
                              Spacer(),
                              Text("Teks 2"),
                            ],
                          ),
                          Row(
                            children: [
                              Spacer(),
                              Text("Teks 3"),
                              Text("Teks 4"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Teks"),
                          SizedBox(
                            height: 20.0,
                          ),
                          Card(
                            color: Colors.blue,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Download",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
