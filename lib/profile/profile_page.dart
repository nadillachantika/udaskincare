import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udaskincare/auth/login_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                      margin: EdgeInsets.fromLTRB(16, 35, 0, 0),
                      child: Text(
                        "Profile",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/profile.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Container(
                              child: Text(
                                "Aditya Bintang F",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Container(
                              child: Text(
                                "Silver Members",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Card(
                  elevation: 0,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: ListTile(
                          onTap: () {},
                          leading: Image.asset("assets/order.png"),
                          title: Text(
                            "My Orders",
                            style: TextStyle(color: Colors.grey),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: ListTile(
                          onTap: () {},
                          leading: Image.asset("assets/address.png"),
                          title: Text(
                            "Shipping Address",
                            style: TextStyle(color: Colors.grey),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: ListTile(
                          onTap: () {},
                          leading: Image.asset("assets/payment.png"),
                          title: Text(
                            "Payment Methodes",
                            style: TextStyle(color: Colors.grey),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: ListTile(
                          onTap: () {},
                          leading: Image.asset("assets/voucher.png"),
                          title: Text(
                            "My Voucher",
                            style: TextStyle(color: Colors.grey),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: ListTile(
                          onTap: () {},
                          leading: Image.asset("assets/setting.png"),
                          title: Text(
                            "Settings",
                            style: TextStyle(color: Colors.grey),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  elevation: 0,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      title: Text(
                        "Logout",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
