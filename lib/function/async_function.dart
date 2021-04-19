import 'package:flutter/material.dart';

class AsyncFunctionView extends StatefulWidget {
  @override
  _AsyncFunctionViewState createState() => _AsyncFunctionViewState();
}

class _AsyncFunctionViewState extends State<AsyncFunctionView> {
  void hitungPenjualan() {
    var harga = 2500;
    var qty = 5;
    print("Sync Function");
    print(harga * qty);
  }

  void hitungPenjualanAsync() async {
    await Future.delayed(Duration(seconds: 1));
    
    var harga = 5000;
    var qty = 10;
    print("Async Function");
    print(harga * qty);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[200],
        title: Text("Async Function"),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              print("1");
              print("2");
              print("3");
              hitungPenjualan();
              print("4");
              print("5");
              print("6");
            },
            child: Card(
              color: Colors.blue[200],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Sync Function"),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("1");
              print("2");
              print("3");
              hitungPenjualanAsync();
              print("4");
              print("5");
              print("6");
            },
            child: Card(
              color: Colors.green[200],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Async Function"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
