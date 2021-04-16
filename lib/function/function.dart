import 'package:flutter/material.dart';

class FunctionView extends StatefulWidget {
  @override
  _FunctionViewState createState() => _FunctionViewState();
}

class _FunctionViewState extends State<FunctionView> {
  String nama;
  String alamat;

  int pangkatkan3(int angka) {
    return angka * angka * angka;
  }

  double diskonProduk(hargaProduk) {
    var diskon = hargaProduk * 25 / 100;
    var hargaSetelahDiskon = hargaProduk - diskon;
    return hargaSetelahDiskon;
  }

  hitungUlang() {}

  test(Function functionLain) {}

  //API
  //username+password , token

  @override
  Widget build(BuildContext context) {
    var hasil = 0;
    // hasil = 3 * 3 * 3;
    // hasil = 5 * 5 * 5;
    //
    hasil = pangkatkan3(5);

    var discount = 0;

    var hargaProduk = 80000;
    var hargaSetelahDiskon = diskonProduk(hargaProduk);

    return Scaffold(
      appBar: AppBar(
        title: Text("Function View"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$hasil",
              style: TextStyle(
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Harga: $hargaProduk",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Harga %: $hargaSetelahDiskon",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
