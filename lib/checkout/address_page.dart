import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:udaskincare/checkout/checkout_page.dart';

class AddressShip extends StatefulWidget {
  const AddressShip({Key key}) : super(key: key);

  @override
  _AddressShipState createState() => _AddressShipState();
}

class _AddressShipState extends State<AddressShip> {
  List<Map<String, dynamic>> address = [
    {
      "id": 1,
      "kota": "Jakarta Pusat",
      "provinsi": "jakarta",
    },
    {
      "id": 2,
      "kota": "Salatiga",
      "provinsi": "Jawa Tengah",
    },
    {
      "id": 3,
      "kota": "Bandung",
      "provinsi": "Jawa Barat",
    },
    {
      "id": 4,
      "kota": "Padang",
      "provinsi": "Sumatra Barat",
    },
    {
      "id": 5,
      "kota": "Malang",
      "provinsi": "Jawa Timur",
    },
  ].toList();

  int value = 0;

  TextEditingController addressShipping = TextEditingController();

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
          "Address",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: address.length,
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
                          addressShipping.text = TextEditingController(
                                  text:
                                      "${address[index]['kota']}, ${address[index]['provinsi']}")
                              .text;
                        }
                      });
                    },
                    title: Text(
                      "${address[index]['kota']}",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("${address[index]['provinsi']}"),
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
                      Navigator.pop(context, addressShipping.text);
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
