import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udaskincare/checkout/checkout_page.dart';
import 'package:udaskincare/home/home_page.dart';

class CartPage extends StatefulWidget {
  // final List<Map<String, dynamic>> listProduk;
  // final Map<String, dynamic> produk;



  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Map<String, dynamic>> item = [
    {
      "id": 1,
      "nama_produk": "White Ginseng",
      "deskripsi_produk": "Radiance Refining Mask adlaah skin care pertama di indonesia\n"
          "berdiiri dari tahun 1998",
      "price": "29000",
      "image_produk": "assets/item_care.jpg",
      "qty": "2",
      "rating": 4.0
    },
    {
      "id": 2,
      "nama_produk": "Skincare",
      "deskripsi_produk": "Radiance Refining Mask adlaah skin care pertama di indonesia\n"
          "berdiiri dari tahun 1998",
      "price": "55000",
      "image_produk": "assets/item_care.jpg",
      "qty": "2",
      "rating": 2.5
    },
    {
      "id": 3,
      "nama_produk": "Mustika Ratu",
      "deskripsi_produk": "Radiance Refining Mask adlaah skin care pertama di indonesia\n"
          "berdiiri dari tahun 1998",
      "price": "100000",
      "image_produk": "assets/item_care.jpg",
      "qty": "2",
      "rating": 3.0
    },
    {
      "id": 4,
      "nama_produk": "Nivea Men",
      "deskripsi_produk": "Radiance Refining Mask adlaah skin care pertama di indonesia\n"
          "berdiiri dari tahun 1998",
      "price": "20000",
      "image_produk": "assets/item_care.jpg",
      "qty": "2",
      "rating": 3.5
    },
    {
      "id": 5,
      "nama_produk": "Citra Bengkoang",
      "deskripsi_produk": "Radiance Refining Mask adlaah skin care pertama di indonesia\n"
          "berdiiri dari tahun 1998",
      "price": "30000",
      "image_produk": "assets/item_care.jpg",
      "qty": "2",
      "rating": 5.0
    },
  ].toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(16, 40, 0, 0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage(
                                        initTab: 0,
                                      )));
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Text(
                        "Cart",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                ListView.builder(
                  itemCount: item.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return IncrementCounter(
                      item[index],
                      onCounter: () {
                        setState(() {});
                      },
                    );
                  },
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                    child: Text(
                                      "Total Pembayaran",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Container(
                                    child: Text("Rp. ${item[0]['price']}"),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: MaterialButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CheckoutPage()));
                                      },
                                      padding: EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 20),
                                      color: Colors.black,
                                      child: Text(
                                        "Checkout",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class IncrementCounter extends StatefulWidget {
  final Map<String, dynamic> listProduk;
  final VoidCallback onCounter;

  const IncrementCounter(this.listProduk, {this.onCounter});

  @override
  _IncrementCounterState createState() => _IncrementCounterState();
}

class _IncrementCounterState extends State<IncrementCounter> {
  Map<String, dynamic> get listProduk => widget.listProduk;

  int _n;

  void add() {
    setState(() {
      _n++;
      widget.onCounter();
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) {
        _n--;
        widget.onCounter();
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _n = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  child: Image.asset(
                    "${widget.listProduk['image_produk']}",
                    height: 100,
                    width: 100,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Container(
                          child: Text(
                            "${widget.listProduk['nama_produk']}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Container(
                          child: Text(
                            "Rp. ${widget.listProduk['price']}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Container(
                              child: Text(
                                "Rp. ${_n * num.parse(widget.listProduk['price'])}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [buildTrailingWidget()],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTrailingWidget() {
    return FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              setState(() => minus());
            },
            icon: Icon(Icons.remove),
          ),
          Text(_n.toString()),
          IconButton(
            onPressed: () {
              setState(() => add());
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
