
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:udaskincare/detail_order/belum_bayar_page.dart';
import 'package:udaskincare/detail_order/completed_pengiriman.dart';
import 'package:udaskincare/detail_order/panen_page.dart';
import 'package:udaskincare/detail_order/pengiriman.dart';

class PesananScreen extends StatefulWidget {
  @override
  _PesananScreenState createState() => _PesananScreenState();
}

class _PesananScreenState extends State<PesananScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  Widget _appBarTitle = Text(
    "Pesanan",

  );

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
 
      child: Scaffold(
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
        labelColor: Colors.white,
        unselectedLabelColor: Color.black,
        controller: _tabController,
      ),
      // leading: IconButton(
      //   icon: Icon(Icons.arrow_back),
      //   onPressed: () {
      //     goAll(
      //         HomePage(
      //           initTab: 0,
      //         ),
      //         context);
      //   },
      // ),
      centerTitle: false,
      automaticallyImplyLeading: false,
      backgroundColor: Color.white,
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
