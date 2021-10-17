import 'dart:convert';

import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:udaskincare/detail/detail_produk.dart';
import 'package:udaskincare/model/model_filter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  List<Filter> menuFilter = [
    Filter(),
    Filter(),
    Filter(),
  ];
  List img = [
    'assets/item_care.jpg',
    'assets/item_care.jpg',
    'assets/item_care.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  int current = 0;

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
  bool loading = false;

  Future<void> getMenu() async {
    setState(() {
      loading = true;
    });
    await Future.delayed(Duration(milliseconds: 500));

    Map dataFilter = {
      "status": 200,
      "pesan": "Berhasil",
      "data": [
        {
          "id": 1,
          "nama_kategori": "All",
          "filter": "ALL",
          "gambar": "gambar.jpg",
          "berita": [
            {
              "judul": "Pemain Utama Cidera",
              "isi": "hdasjdgefyuewfgwyef",
              "lokasi": "Jakarta (GBK)",
              "foto": "gambar.jpg"
            },
            {
              "judul": "Pemain Utama Cidera",
              "isi": "hdasjdgefyuewfgwyef",
              "lokasi": "Jakarta (GBK)",
              "foto": "gambar.jpg"
            }
          ]
        },
        {
          "id": 2,
          "nama_kategori": "Toners",
          "filter": "TONERS",
          "gambar": "gambar.jpg",
          "berita": [
            {
              "judul": "Pemain Utama Cidera",
              "isi": "hdasjdgefyuewfgwyef",
              "lokasi": "Jakarta (GBK)",
              "foto": "gambar.jpg"
            },
            {
              "judul": "Pemain Utama Cidera",
              "isi": "hdasjdgefyuewfgwyef",
              "lokasi": "Jakarta (GBK)",
              "foto": "gambar.jpg"
            }
          ]
        },
        {
          "id": 3,
          "nama_kategori": "Cleaner",
          "filter": "CLEANER",
          "gambar": "gambar.jpg",
          "berita": [
            {
              "judul": "Pemain Utama Cidera",
              "isi": "hdasjdgefyuewfgwyef",
              "lokasi": "Jakarta (GBK)",
              "foto": "gambar.jpg"
            },
            {
              "judul": "Pemain Utama Cidera",
              "isi": "hdasjdgefyuewfgwyef",
              "lokasi": "Jakarta (GBK)",
              "foto": "gambar.jpg"
            }
          ]
        }
      ]
    };
    ModelFilter modelFilter = modelFilterFromJson(jsonEncode(dataFilter));
    setState(() {
      menuFilter = modelFilter.data;
      loading = false;
    });
    return modelFilter;
  }

  TabController filter;

  @override
  void initState() {
    filter = TabController(length: menuFilter.length, vsync: this);
    super.initState();
    getMenu();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                    child: Image.asset(
                      "assets/ucare.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 14.0, 0.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                CarouselSlider(
                  items: img.map((value) {
                    return Builder(builder: (BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/item_care.jpg"),
                                fit: BoxFit.cover)),
                      );
                    });
                  }).toList(),
                  options: CarouselOptions(
                    height: 200,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 500),
                    viewportFraction: 1,
                    onPageChanged: (index, _) {
                      setState(() {
                        current = index;
                      });
                    },
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map(img, (index, _) {
                      return Container(
                        width: 8,
                        height: 8,
                        margin:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: current == index ? Colors.black : Colors.white,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            DefaultTabController(
              length: menuFilter.length,
              child: TabBar(
                physics: BouncingScrollPhysics(),
                controller: filter,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: Colors.black,
                indicator: BubbleTabIndicator(
                  indicatorHeight: 35,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  indicatorColor: Colors.black,
                  tabBarIndicatorSize: TabBarIndicatorSize.tab,
                ),
                tabs: menuFilter.map((e) {
                  return Tab(text: e?.namaKategori ?? "");
                }).toList(),
              ),
            ),
            ItemProduk(
              produk: item,
            ),
          ],
        ),
      ),
    );
  }
}

class ItemProduk extends StatefulWidget {
  final List<Map<String, dynamic>> produk;

  ItemProduk({this.produk});

  @override
  _ItemProdukState createState() => _ItemProdukState();
}

class _ItemProdukState extends State<ItemProduk> {
  bool tap = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GridView.builder(
      controller: ScrollController(keepScrollOffset: false),
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          childAspectRatio: 1 / 1.9,
          mainAxisSpacing: 5),
      itemCount: widget.produk.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.grey[200],
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          elevation: 5,
          child: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailProduk(produk: widget.produk[index], listProduk: widget.produk),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "${widget.produk[index]['image_produk']}",
                          height: 150,
                          width: size.width - 188,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    widget.produk[index]["nama_produk"],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    widget.produk[index]["deskripsi_produk"],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Qty: ${widget.produk[index]["qty"]}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "${widget.produk[index]["price"]}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
