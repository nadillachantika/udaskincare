


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PanenPage extends StatefulWidget {
  final TabController tabController;

  const PanenPage(this.tabController, {Key key}) : super(key: key);

  @override
  _PanenPageState createState() => _PanenPageState();
}

class _PanenPageState extends State<PanenPage> {
  int difference;

  void getDifferenceDay(DateTime day) {
    DateTime birthday = day;
    DateTime date2 = DateTime.now();
    difference = birthday?.difference(date2)?.inDays ?? 0;
  }

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
    double widthScreen = MediaQuery.of(context).size.width;
    return Theme(
     
      child: Scaffold(
          backgroundColor: Color(0xFFE5E5E5),
          body: ListView.builder(
            shrinkWrap: true,
            itemCount: item.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Container(
                            child:
                            Text("UCare2021"),
                          ),
                          // Container(
                          //   child: Text(
                          //     "${formatDateWithDay(DateTime.parse(
                          //         data.product.createdAt), context)}",
                          //     style: TextStyle(
                          //         color: Color(0xFF4CAAAA),
                          //         fontWeight: FontWeight.bold),
                          //   ),
                          // ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        child: Row(children: [
                          Container(
                            child: Image.asset(
                              "assets/item_care.png",
                              height: 100,
                              width: 100,
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 8.0),
                                  child: Container(
                                    child: Text(
                                      "Whitening Screen",
                                      style: TextStyle(
                                          fontWeight:
                                          FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 8.0),
                                  child: Container(
                                    child: Text(
                                      "2 Qty",
                                      style: TextStyle(
                                          fontWeight:
                                          FontWeight.bold,
                                          color: Colors.grey),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 8.0),
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0, 0, 0, 30),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceEvenly,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Total Pembayaran",
                                            style: TextStyle(
                                                color:
                                                Colors.grey,
                                                fontWeight:
                                                FontWeight
                                                    .bold),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            " Rp. 20000",
                                            style: TextStyle(
                                                color:
                                                Colors.black,
                                                fontWeight:
                                                FontWeight
                                                    .bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text(
                              "Status: ",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Proses ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
                            child: Text(
                              "17 Oktober 2021",
                              style: TextStyle(
                                  color: Color(0xFF4CAAAA),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
                            child: Text(
                              "($difference hari)",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            minWidth: widthScreen / 2.5,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(
                                    25)),
                            textColor: Colors.white,
                            color: Color(0xFF4CAAAA),
                            onPressed: () {


                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (_) =>
                              //             CheckoutPagePesanan(
                              //                 data)));
                            },
                            child: Text('Lanjut Kirim',
                                style: TextStyle(
                                    fontWeight:
                                    FontWeight.bold)),
                          ),

                          // Visibility(
                          //   visible: data.product.hargaPenadah != null,
                          //   child: MaterialButton(
                          //     minWidth: widthScreen / 2.5,
                          //     shape: RoundedRectangleBorder(
                          //         borderRadius:
                          //             BorderRadius.circular(
                          //                 25)),
                          //     textColor: Colors.white,
                          //     color: Color(0xFF094670),
                          //     onPressed: () {
                          //       log('idTransask ${data?.idTransaction ?? 0}');
                          //       goTo(
                          //           JualKembaliPage(data,
                          //               difference, status),
                          //           context);
                          //     },
                          //     child: Text(
                          //       'Jual Kembali',
                          //       style: TextStyle(
                          //           fontWeight:
                          //               FontWeight.bold),
                          //     ),
                          //   ),
                          // )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }

}
