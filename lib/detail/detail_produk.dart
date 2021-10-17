import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:udaskincare/home/home_page.dart';


class DetailProduk extends StatefulWidget {
  final Map<String, dynamic> produk;

  const DetailProduk({Key key, this.produk}) : super(key: key);

  @override
  _DetailProdukState createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Text(
                        "${widget.produk['nama_produk']}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Image.asset(
                    "${widget.produk['image_produk']}",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(14, 0, 0, 0),
                  child: Text(
                    "${widget.produk['nama_produk']}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(14, 0, 0, 0),
                  child: Text(
                    "Rp. ${widget.produk['price']}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
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
