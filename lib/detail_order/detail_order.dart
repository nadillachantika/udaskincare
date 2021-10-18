import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:udaskincare/detail_order/pesanan_screen.dart';
import 'package:udaskincare/home/home_page.dart';

class DetailOrder extends StatefulWidget {
  const DetailOrder({Key key}) : super(key: key);

  @override
  _DetailOrderState createState() => _DetailOrderState();
}

class _DetailOrderState extends State<DetailOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage(
                                    initTab: 3,
                                  )));
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: Text(
                    "Detail Order",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: Text("Waktu pembayaran"),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: Text(
                    "16 Oktober 2021",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: Text("Gopay"),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: Image.asset("assets/gopay.png"),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Text("Account Number", style: TextStyle(color: Colors.grey),),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: Text("880099990100 "), // tampung text di dalam variabel, untuk membuat fungsi copy paste
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: GestureDetector(
                    onTap: (){
                      //buat fungsi untuk copy paste
                    },
                    child: Text(
                      "Salin",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: Text("Total Pembayaran "), // tampung text di dalam variabel, untuk membuat fungsi copy paste
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: Text(
                    "Rp. 129.000",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 26,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: MaterialButton(
                            onPressed: () {
                              //Home Page
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(
                                    initTab: 0,
                                  ),
                                ),
                              );
                            },
                            padding: EdgeInsets.symmetric(vertical: 15),
                            color: Colors.black,
                            elevation: 0,
                            child: Text(
                              "Buy Again",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: MaterialButton(
                            onPressed: () {
                              //My Order
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PesananScreen()
                                ),
                              );
                            },
                            padding: EdgeInsets.symmetric(vertical: 15),
                            color: Colors.white,
                            elevation: 0,
                            child: Text(
                              "Check Status",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
