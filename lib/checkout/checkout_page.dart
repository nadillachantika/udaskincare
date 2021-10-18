import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:udaskincare/checkout/Pembayaran.dart';
import 'package:udaskincare/checkout/address_page.dart';
import 'package:udaskincare/checkout/success_payment_saldo_panen.dart';
import 'package:udaskincare/home/home_page.dart';

import 'Kurir.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key key}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  List<Map<String, dynamic>> item = [
    {
      "id": 1,
      "nama_produk": "White Ginseng",
      "deskripsi_produk":
          "Radiance Refining Mask adlaah skin care pertama di indonesia\n"
              "berdiiri dari tahun 1998",
      "price": "29000",
      "image_produk": "assets/item_care.jpg",
      "qty": "2",
      "rating": 4.0
    },
    {
      "id": 2,
      "nama_produk": "Skincare",
      "deskripsi_produk":
          "Radiance Refining Mask adlaah skin care pertama di indonesia\n"
              "berdiiri dari tahun 1998",
      "price": "55000",
      "image_produk": "assets/item_care.jpg",
      "qty": "2",
      "rating": 2.5
    },
    {
      "id": 3,
      "nama_produk": "Mustika Ratu",
      "deskripsi_produk":
          "Radiance Refining Mask adlaah skin care pertama di indonesia\n"
              "berdiiri dari tahun 1998",
      "price": "100000",
      "image_produk": "assets/item_care.jpg",
      "qty": "2",
      "rating": 3.0
    },
    {
      "id": 4,
      "nama_produk": "Nivea Men",
      "deskripsi_produk":
          "Radiance Refining Mask adlaah skin care pertama di indonesia\n"
              "berdiiri dari tahun 1998",
      "price": "20000",
      "image_produk": "assets/item_care.jpg",
      "qty": "2",
      "rating": 3.5
    },
    {
      "id": 5,
      "nama_produk": "Citra Bengkoang",
      "deskripsi_produk":
          "Radiance Refining Mask adlaah skin care pertama di indonesia\n"
              "berdiiri dari tahun 1998",
      "price": "30000",
      "image_produk": "assets/item_care.jpg",
      "qty": "2",
      "rating": 5.0
    },
  ].toList();
  TextEditingController alamat = TextEditingController();
  TextEditingController payment = TextEditingController();
  TextEditingController kurir = TextEditingController();

  void updateInformation(String information) {
    setState(() => alamat.text = information);
  }

  void updatePayment(String information) {
    setState(() => payment.text = information);
  }

  void updateKurir(String information) {
    setState(() => kurir.text = information);
  }

  void moveToSecondPage() async {
    final data = await Navigator.push(
      context,
      MaterialPageRoute(
          fullscreenDialog: true, builder: (context) => AddressShip()),
    );
    updateInformation(data);
  }

  void paymentMove() async {
    final data = await Navigator.push(
      context,
      MaterialPageRoute(
          fullscreenDialog: true, builder: (context) => PaymentPage()),
    );
    updatePayment(data);
  }

  void kurirMove() async {
    final data = await Navigator.push(
      context,
      MaterialPageRoute(
          fullscreenDialog: true, builder: (context) => KurirPage()),
    );
    updateKurir(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(
                    initTab: 0,
                  ),
                ),
              );
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: Text(
          "Checkout",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Alamat Pengiriman",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    "Kota Pengiriman",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                                child: TextFormField(
                                  controller: alamat,
                                  onTap: () {
                                    moveToSecondPage();
                                  },
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    hintText: 'Pilih Alamat',
                                    suffixIcon: Icon(
                                      Icons.location_on,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Payment Method",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    "Pilih Pembayaran",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                                child: TextFormField(
                                  controller: payment,
                                  onTap: () {
                                    paymentMove();
                                  },
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    hintText: 'Pilih Pembayaran',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Courier",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    "Pilih Jasa Kurir",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                                child: TextFormField(
                                  controller: kurir,
                                  onTap: () {
                                    kurirMove();
                                  },
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    hintText: 'Pilih Kurir',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Daftar Barang",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //diisi produk - produkk apa aja yang dibeli dari cart.
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Voucher",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                                child: TextFormField(
                                  onTap: () {},
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    hintText: 'Gunakan Voucher',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Ringkasan Belanja",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Subtotal",
                              ),
                            ),
                            Text("Rp. 129.000"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Ongkir",
                              ),
                            ),
                            Text("Rp. 20000"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                              child: Text(
                                "Total",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                              child: Text(
                                "Rp. 129.000",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Container(
                            // height: 60,
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SuccessPayment()));
                                },
                                padding: EdgeInsets.symmetric(
                                    vertical: 19, horizontal: 115),
                                color: Colors.black,
                                elevation: 0,
                                child: Text(
                                  "Checkout",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
