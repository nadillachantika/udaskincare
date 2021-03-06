


import 'package:flutter/material.dart';


class BelumBayarPage extends StatefulWidget {
  final TabController tabController;

  const BelumBayarPage(this.tabController, {Key key}) : super(key: key);

  @override
  _BelumBayarPageState createState() => _BelumBayarPageState();
}

class _BelumBayarPageState extends State<BelumBayarPage> {
  int difference;

  String transaksi;

  void getDifferenceDay(DateTime day) {
    DateTime birthday = day;
    DateTime date2 = DateTime.now();
    difference = birthday?.difference(date2)?.inDays;
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
    return Scaffold(
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
                            "assets/item_care.jpg",
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
                    // Row(
                    //   mainAxisAlignment:
                    //   MainAxisAlignment.start,
                    //   children: [
                    //     MaterialButton(
                    //       minWidth: widthScreen / 2.5,
                    //       shape: RoundedRectangleBorder(
                    //           borderRadius:
                    //           BorderRadius.circular(
                    //               25)),
                    //       textColor: Colors.white,
                    //       color: Color(0xFF4CAAAA),
                    //       onPressed: () {
                    //
                    //
                    //         // Navigator.push(
                    //         //     context,
                    //         //     MaterialPageRoute(
                    //         //         builder: (_) =>
                    //         //             CheckoutPagePesanan(
                    //         //                 data)));
                    //       },
                    //       child: Text('Detail Order',
                    //           style: TextStyle(
                    //               fontWeight:
                    //               FontWeight.bold)),
                    //     ),
                    //
                    //     // Visibility(
                    //     //   visible: data.product.hargaPenadah != null,
                    //     //   child: MaterialButton(
                    //     //     minWidth: widthScreen / 2.5,
                    //     //     shape: RoundedRectangleBorder(
                    //     //         borderRadius:
                    //     //             BorderRadius.circular(
                    //     //                 25)),
                    //     //     textColor: Colors.white,
                    //     //     color: Color(0xFF094670),
                    //     //     onPressed: () {
                    //     //       log('idTransask ${data?.idTransaction ?? 0}');
                    //     //       goTo(
                    //     //           JualKembaliPage(data,
                    //     //               difference, status),
                    //     //           context);
                    //     //     },
                    //     //     child: Text(
                    //     //       'Jual Kembali',
                    //     //       style: TextStyle(
                    //     //           fontWeight:
                    //     //               FontWeight.bold),
                    //     //     ),
                    //     //   ),
                    //     // )
                    //   ],
                    // )
                  ],
                ),
              ),
            );
          },
        ));
  }


}

// BlocConsumer<CheckProductCubit,
//     CheckProductState>(
//   listener:
//       (BuildContext context, state) {
//     if (state is CheckProductSuccess) {
//       if (state.resValidasiProduct
//               ?.status ==
//           true) {
//         goTo(
//             WaitingPembayaranPage(
//                 data.idTransaction,
//                 data.paymentTotal,
//                 transaksi ?? "TRANSFER",
//                 tipe: "PANEN"),
//             context);
//       } else {
//         showInSnackbar(state
//             .resValidasiProduct
//             .message);
//       }
//     }
//   },
//   builder:
//       (BuildContext context, state) {
//     checkProductCubit = context
//         .read<CheckProductCubit>();
//
//     if (state is CheckProductError) {
//       return showInSnackbar(
//           state.message);
//     }
//     return MaterialButton(
//       minWidth: widthScreen / 2.5,
//       shape: RoundedRectangleBorder(
//           borderRadius:
//               BorderRadius.circular(
//                   25)),
//       textColor: Colors.white,
//       color: Color(0xFF4CAAAA),
//       onPressed: () async {
//         print(
//             'di transaksi ${data?.idTransaction ?? 0}');
//         log("Data ${data.paymentTotal}");
//         // String dateOffer =
//         //     "${data.product.dateOffer.difference(DateTime.now()).inDays / 7}";
//         // var week = dateOffer.split('');
//         //
//         // if (data.product.dateOffer
//         //         .difference(DateTime.now())
//         //         .inDays ==
//         //     0) {
//         //   showInSnackbarRed(
//         //       "Penawaran telah selesai dan tidak dapat membayar");
//         // }
//         setState(() {
//           checkProductCubit
//               .checkProduct(
//               data.idProduct);
//         });
//
//         // if(checkProductCubit)
//       },
//       child: Text('Bayar',
//           style: TextStyle(
//               fontWeight:
//                   FontWeight.bold)),
//     );
//   },
// ),
