import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udaskincare/home/home_page.dart';


class SuccessPayment extends StatefulWidget {


  const SuccessPayment({Key key})
      : super(key: key);

  @override
  _SuccessPaymentState createState() => _SuccessPaymentState();
}

class _SuccessPaymentState extends State<SuccessPayment> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        insetPadding: EdgeInsets.all(20),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/ceklist.png'),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pembayaran Senilai',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF4CAAAA),
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Text("Rp. 20000", style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF4CAAAA),
                        fontWeight: FontWeight.bold),),
                  ),
                  // Container(
                  //   child: () {
                  //     bool isSelectedVoucher =
                  //         widget.selectedVoucher?.text?.trim()?.isNotEmpty ??
                  //             false;
                  //     if (isSelectedVoucher) {
                  //       return Text(
                  //           "${formatMoney(num.parse(widget.s) - num.parse(widget.totalPotongan))}",
                  //           style: TextStyle(
                  //               fontSize: 20,
                  //               color: Color(0xFF4CAAAA),
                  //               fontWeight: FontWeight.bold));
                  //     } else {
                  //       return Text("${formatMoney(widget.s)}",
                  //           style: TextStyle(
                  //               fontSize: 20,
                  //               color: Color(0xFF4CAAAA),
                  //               fontWeight: FontWeight.bold));
                  //     }
                  //   }(),
                  // ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Container(
                    child: Text("Rp. 20000", style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF4CAAAA),
                        fontWeight: FontWeight.bold),),
                  ),
                  // Container(
                  //   child: () {
                  //     bool isSelectedVoucher =
                  //         widget.selectedVoucher?.text
                  //             ?.trim()
                  //             ?.isNotEmpty ??
                  //             false;
                  //     if (isSelectedVoucher) {
                  //       return Text(
                  //           "${formatMoney(num.parse(widget.s) -
                  //               num.parse(widget.totalPotongan))}",
                  //           style: TextStyle(
                  //               fontSize: 20,
                  //               color: Color(0xFF4CAAAA),
                  //               fontWeight: FontWeight.bold));
                  //     } else {
                  //       return Text("${formatMoney(widget.s)}",
                  //           style: TextStyle(
                  //               fontSize: 20,
                  //               color: Color(0xFF4CAAAA),
                  //               fontWeight: FontWeight.bold));
                  //     }
                  //   }(),
                  // ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Via',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Text(
                    'BANK BCA',
                    style:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pengirim',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Text(
                    'Aditya Bintang',
                    style:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tanggal',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      '17 oktober 2021',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              // Container(
              //   margin: EdgeInsets.fromLTRB(16, 10, 16, 0),
              //   child: BlocBuilder<ShareLinkCubit, ShareLinkState>(
              //     builder: (BuildContext context, state) {
              //       shareLink = context.read<ShareLinkCubit>();
              //       return MaterialButton(
              //         minWidth: MediaQuery
              //             .of(context)
              //             .size
              //             .width,
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(50)),
              //         height: 45,
              //         color: Color(0xFF094670),
              //         textColor: Colors.white,
              //         child: Text('Share Produk'),
              //         onPressed: () async {
              //           shareLink.getMessageLink(12, widget.totalPo);
              //           if (state is ShareLinkLoading) {
              //             return loadingCircular;
              //           }
              //           if (state is ShareLinkSuccess) {
              //             String link =
              //             await DeeplinkHelper.createProductLink(
              //                 widget.idProduct);
              //             await shareWhatsappText(
              //                 "+" + dataGlobal?.user?.phone.toString(),
              //                 "${state.resShareLink.data}\n $link");
              //           }
              //         },
              //       );
              //     },
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16, 10, 16, 0),
                child: MaterialButton(
                  minWidth: MediaQuery
                      .of(context)
                      .size
                      .width,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  height: 45,
                  color: Color(0xFF094670),
                  textColor: Colors.white,
                  child: Text('Close'),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage(
                                  initTab: 0,
                                )));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
