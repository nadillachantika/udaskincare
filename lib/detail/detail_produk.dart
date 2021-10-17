import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:udaskincare/cart/cart_page.dart';
import 'package:udaskincare/home/home_page.dart';


class DetailProduk extends StatefulWidget {
  final Map<String, dynamic> produk;
  final List<Map<String, dynamic>> listProduk;
  const DetailProduk({Key key, this.produk,  this.listProduk}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(16, 40, 0, 0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  HomePage(
                                    initTab: 0,
                                  ),
                            ),
                          );
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
                    "Rp. ${widget.produk['price']}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(14, 0, 0, 0),
                  child: Text(
                    "${widget.produk['nama_produk']}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(14, 0, 0, 0),
                  child: Row(
                    children: [
                      RatingBarIndicator(
                        rating: widget.produk['rating'],
                        itemBuilder: (context, index) =>
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                        itemCount: 5,
                        itemSize: 20.0,
                        direction: Axis.horizontal,
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        child: Text(
                          "${widget.produk['rating']}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFf2f2f2)),
                      shape: BoxShape.rectangle),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                    child: Text(
                      widget.produk['deskripsi_produk'],
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(14, 0, 0, 0),
                      child: Text(
                        "Size",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        // height: 60,
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CartPage()));
                            },
                            padding: EdgeInsets.symmetric(vertical: 15),
                            color: Colors.black,
                            elevation: 0,
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
