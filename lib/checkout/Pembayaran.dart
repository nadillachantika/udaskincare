import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udaskincare/checkout/checkout_page.dart';


class PaymentPage extends StatefulWidget {
  const PaymentPage({Key key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  List<Map<String, dynamic>> payment = [
    {
      "id": 1,
      "bank": "Paypal",
      "image": "assets/paypal.png",
    },
    {
      "id": 2,
      "bank": "Googlepay",
      "image": "assets/googlepay.png",
    },
    {
      "id": 3,
      "bank": "Danapay",
      "image": "assets/dana.png",
    },
    {
      "id": 4,
      "bank": "Gopay",
      "image": "assets/gopay.png",
    },
  ].toList();

  int value = 0;

  TextEditingController paymentMethod = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckoutPage()),
              );
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: Text(
          "Payment Method",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: payment.length,
              itemBuilder: (_, index) {
                return Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: RadioListTile(
                    value: index,
                    groupValue: value,
                    onChanged: (val){
                      value = val;
                      setState((){

                        if (val != null) {
                          paymentMethod.text = TextEditingController(
                                  text:
                                      "${payment[index]['bank']}")
                              .text;
                        }
                      });
                    },
                    title: Row(
                      children: [
                        Image.asset("${payment[index]['image']}"),
                        Padding(padding: EdgeInsets.only(right: 8)),
                        Text(
                          "${payment[index]['bank']}",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                  ),
                );
              },
            ),
            Center(
              child: Container(
                // height: 60,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pop(context, paymentMethod.text);
                    },
                    padding:
                        EdgeInsets.symmetric(vertical: 19, horizontal: 115),
                    color: Colors.black,
                    elevation: 0,
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
