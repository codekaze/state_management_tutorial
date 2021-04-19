import 'package:flutter/material.dart';

class SelectContactView extends StatefulWidget {
  @override
  _SelectContactViewState createState() => _SelectContactViewState();
}

class _SelectContactViewState extends State<SelectContactView> {
  List<Map> cartItems = [
    //index 0
    {
      "product_name": "Gitar Listrik",
      "image_url":
          "https://sirclocdn.com/smosyumusic-com/blog/_191001175404_Squier%20Strat_ori.jpg",
      "price": 2500000,
      "qty": 1,
    },
    // index 1
    {
      "product_name": "Meja Belajar",
      "image_url":
          "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//94/MTA-4475640/dekoruma_dekoruma_-_heim_studio_yucca_set_meja_belajar_dengan_laci_penyimpanan_full06_t54t1ff7.jpg",
      "price": 175000,
      "qty": 20,
    },
    // index 2
    {
      "product_name": "PC Gaming",
      "image_url":
          "https://merahputih.com/media/f0/86/1d/f0861dd0ce71c639c582dcdcfef4b95b.jpg",
      "price": 16500000,
      "qty": 10,
    },
    // index 3
    {
      "product_name": "Lampu Aladin",
      "image_url":
          "https://statics.indozone.news/content/2020/11/21/vWsB5Lk/apes-dokter-ini-tertipu-rp1-3-miliar-usai-beli-lampu-aladdin-palsu30_700.jpg",
      "price": 75000000,
      "qty": 30,
    },
    {
      "product_name": "Lampu Aladin",
      "image_url":
          "https://statics.indozone.news/content/2020/11/21/vWsB5Lk/apes-dokter-ini-tertipu-rp1-3-miliar-usai-beli-lampu-aladdin-palsu30_700.jpg",
      "price": 75000000,
      "qty": 40,
    },
    {
      "product_name": "Lampu Aladin",
      "image_url":
          "https://statics.indozone.news/content/2020/11/21/vWsB5Lk/apes-dokter-ini-tertipu-rp1-3-miliar-usai-beli-lampu-aladdin-palsu30_700.jpg",
      "price": 75000000,
      "qty": 1,
    },
    {
      "product_name": "Lampu Aladin",
      "image_url":
          "https://statics.indozone.news/content/2020/11/21/vWsB5Lk/apes-dokter-ini-tertipu-rp1-3-miliar-usai-beli-lampu-aladdin-palsu30_700.jpg",
      "price": 75000000,
      "qty": 50,
    },
    {
      "product_name": "Lampu Aladin",
      "image_url":
          "https://statics.indozone.news/content/2020/11/21/vWsB5Lk/apes-dokter-ini-tertipu-rp1-3-miliar-usai-beli-lampu-aladdin-palsu30_700.jpg",
      "price": 75000000,
      "qty": 1,
    },
    {
      "product_name": "Lampu Aladin",
      "image_url":
          "https://statics.indozone.news/content/2020/11/21/vWsB5Lk/apes-dokter-ini-tertipu-rp1-3-miliar-usai-beli-lampu-aladdin-palsu30_700.jpg",
      "price": 75000000,
      "qty": 1,
    },
    {
      "product_name": "Lampu Aladin",
      "image_url":
          "https://statics.indozone.news/content/2020/11/21/vWsB5Lk/apes-dokter-ini-tertipu-rp1-3-miliar-usai-beli-lampu-aladdin-palsu30_700.jpg",
      "price": 75000000,
      "qty": 1,
    },

    {
      "product_name": "Lampu Aladin",
      "image_url":
          "https://statics.indozone.news/content/2020/11/21/vWsB5Lk/apes-dokter-ini-tertipu-rp1-3-miliar-usai-beli-lampu-aladdin-palsu30_700.jpg",
      "price": 75000000,
      "qty": 1,
    },
  ];

  getIconByQty(int qty) {
    if (qty < 10) {
      return Icon(
        Icons.dangerous,
        color: Colors.red,
      );
    } else {
      return Icon(
        Icons.check,
        color: Colors.green,
      );
    }
  }

  getIconByStatus(String status) {
    if (status == "read") {
      return Icon(Icons.check);
    } else {
      return Icon(Icons.mark_as_unread);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075E55),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Select Contact",
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            Text(
              "Select Contact",
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ],
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10.0,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue[100],
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  Map item = cartItems[index];

                  return Column(
                    children: [
                      if (index == 0)
                        Container(
                          color: Colors.yellow,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text("New Group"),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text("New Contact"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: FlutterLogo(),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "${item["product_name"]}",
                                ),
                                Text(
                                  "Stock: ${item["qty"]}",
                                ),
                                getIconByQty(item["qty"]),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
