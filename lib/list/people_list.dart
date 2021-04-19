import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PoepleListView extends StatefulWidget {
  @override
  _PoepleListViewState createState() => _PoepleListViewState();
}

class _PoepleListViewState extends State<PoepleListView> {
  bool loading = true;
  List items = [];

  void loadData() async {
    //script untuk mendapatkan data dari API
    var url = "https://jsonplaceholder.typicode.com/users";
    var response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body);
    // List<Map> data = jsonDecode(response.body);
    //
    print(data);
    items.addAll(data);
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Text("People List"),
      ),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  var item = items[index];

                  return Card(
                    color: index % 2 == 0 ? Colors.red[50] : Colors.yellow[50],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ID : ${item["id"]}"),
                          Text("Name : ${item["name"]}"),
                          Text("Email : ${item["email"]}"),
                        ],
                      ),
                    ),
                  );
                },
              ),
          ),
    );
  }
}
