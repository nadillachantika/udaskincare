
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:udaskincare/detail_order/belum_bayar_page.dart';
import 'package:udaskincare/detail_order/completed_pengiriman.dart';
import 'package:udaskincare/detail_order/panen_page.dart';
import 'package:udaskincare/detail_order/pengiriman.dart';
import 'package:udaskincare/home/home_page.dart';

class PesananScreen extends StatefulWidget {
  @override
  _PesananScreenState createState() => _PesananScreenState();
}

class _PesananScreenState extends State<PesananScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  Widget _appBarTitle = Text(
    "ORDER",style: TextStyle(color: Colors.black),

  );

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildBar(context),
      body: TabBarView(
              controller: _tabController,
              children: [
                PanenPage(_tabController),
                PengirimanPage(_tabController),

                BelumBayarPage(_tabController),
                CompletedPengirimanPage(_tabController)
              ],
            ),
    );
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      bottom: TabBar(
        isScrollable: true,
        tabs: [
          Tab(
            child: Text('Proses',style:TextStyle(fontSize: 11),),
          ),
          Tab(
            child: Text(
              'Pengiriman',
              style: TextStyle(fontSize: 11),
            ),
          ),
          Tab(
            child: Text(
              'Dibatalkan',
              style: TextStyle(fontSize: 11),
            ),
          ),
          Tab(
            child: Text(
              'Selesai',
              style: TextStyle(fontSize: 11),
            ),
          ),
        ],
        labelColor: Colors.black,
        unselectedLabelColor: Colors.black,
        controller: _tabController,
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black,),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(initTab: 3,)));
        },
      ),
      centerTitle: false,
      backgroundColor: Colors.white,
      title: _appBarTitle,
      // actions: () {
      //   return <Widget>[
      //     IconButton(
      //       icon: _shoppingBag,
      //       onPressed: () {},
      //     ),
      //   ];
      // }(),
    );
  }
}
