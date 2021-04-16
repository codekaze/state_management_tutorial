import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
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
      "qty": 1,
    },
    // index 2
    {
      "product_name": "PC Gaming",
      "image_url":
          "https://merahputih.com/media/f0/86/1d/f0861dd0ce71c639c582dcdcfef4b95b.jpg",
      "price": 16500000,
      "qty": 1,
    },
    // index 3
    {
      "product_name": "Lampu Aladin",
      "image_url":
          "https://statics.indozone.news/content/2020/11/21/vWsB5Lk/apes-dokter-ini-tertipu-rp1-3-miliar-usai-beli-lampu-aladdin-palsu30_700.jpg",
      "price": 75000000,
      "qty": 1,
    },
  ];

  void deleteItem(itemIndex) {
    cartItems.removeAt(itemIndex);
    setState(() {});
  }

  //deleteItem(1);
  //deleteItem(3);
  //deleteItem(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.red[500],
          // format: 0xff + kode warna
          backgroundColor: Color(0xffAF7AC5),
          title: Row(
            children: [
              Icon(Icons.shopping_cart),
              SizedBox(
                width: 10.0,
              ),
              Text("My Cart"),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.clear),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //! List Horizontal
              Container(
                height: 50.0,
                child: ListView.builder(
                  itemCount: cartItems.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 50.0,
                      width: 100.0,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(20.0)),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              //! List Vertical
              Expanded(
                child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    // 0
                    // 1
                    // 2
                    // 3

                    //var nama_varoabel =  namaList[index];
                    var item = cartItems[index];

                    // var prod = cartItems[2];
                    // print(prod["product_name"])
                    // print(prod["price"])

                    return Container(
                      height: 100.0,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        children: [
                          Image.network(
                            item["image_url"],
                            width: 80.0,
                            height: 80.0,
                            fit: BoxFit.fill,
                          ),
                          Text("${item["product_name"]}"),
                          Text("${item["price"]}"),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              deleteItem(index);
                            },
                            child: Text(
                              "Delete",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
