import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:udaskincare/checkout/checkout_page.dart';

class KurirPage extends StatefulWidget {
  const KurirPage({Key key}) : super(key: key);

  @override
  _KurirPageState createState() => _KurirPageState();
}

class _KurirPageState extends State<KurirPage> {
  List<Map<String, dynamic>> courier = [
    {
      "id": 1,
      "kurir": "POS Indonesia",
      "image": "assets/pos.png",
      "jenis": "REG",
      "price": "10000",
      "days": "2"
    },
    {
      "id": 2,
      "kurir": "JNT Express",
      "image": "assets/jnt.png",
      "jenis": "REG",
      "price": "15000",
      "days": "1"
    },
    {
      "id": 3,
      "kurir": "JNE Express",
      "image": "assets/jne.png",
      "jenis": "REG",
      "price": "22000",
      "days": "3"
    },
    {
      "id": 4,
      "kurir": "SICEPAT",
      "image": "assets/sicepat.png",
      "jenis": "REG",
      "price": "9000",
      "days": "6"
    },
  ].toList();

  int value = 0;

  TextEditingController courierMethod = TextEditingController();

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
              itemCount: courier.length,
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
                    onChanged: (val) {
                      value = val;
                      setState(() {
                        if (val != null) {
                          courierMethod.text = TextEditingController(
                                  text: "${courier[index]['kurir']} - ${courier[index]['jenis']}")
                              .text;
                        }
                      });
                    },
                    title: Row(
                      children: [
                        Image.asset("${courier[index]['image']}"),
                        Padding(padding: EdgeInsets.only(right: 8)),
                        Text(
                          "${courier[index]['kurir']}",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    subtitle: Text(
                        "${courier[index]['jenis']} - ${courier[index]['price']}(${courier[index]['days']} Hari)"),
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
                      Navigator.pop(context, courierMethod.text);
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
