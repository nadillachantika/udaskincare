import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:udaskincare/detail/detail_produk.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  List img = [
    'assets/item_care.jpg',
    'assets/item_care.jpg',
    'assets/item_care.jpg',
  ];

  int current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  List<Map<String, dynamic>> item = [
    {
      "id": 1,
      "nama_produk": "SkinCare",
      "deskripsi_produk":
          "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum\nLorem ipsum ",
      "price": "29000",
      "image_produk": "assets/item_care.jpg",
      "qty": "2",
      "rating": 4.0
    },
    {
      "id": 2,
      "nama_produk": "White Ginseng",
      "deskripsi_produk":
          "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum\nLorem ipsum ",
      "price": "10000",
      "image_produk": "assets/item_care.jpg",
      "qty": "3",
      "rating": 3.5
    },
    {
      "id": 3,
      "nama_produk": "Viva Men",
      "deskripsi_produk":
          "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum\nLorem ipsum ",
      "price": "9000",
      "image_produk": "assets/item_care.jpg",
      "qty": "6",
      "rating": 2.0
    },
    {
      "id": 4,
      "nama_produk": "LifeBoy",
      "deskripsi_produk":
          "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum\nLorem ipsum ",
      "price": "19000",
      "image_produk": "assets/item_care.jpg",
      "qty": "1",
      "rating": 3.0
    },
    {
      "id": 5,
      "nama_produk": "SkinCare Wajah",
      "deskripsi_produk":
          "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum\nLorem ipsum ",
      "price": "20000",
      "image_produk": "assets/item_care.jpg",
      "qty": "1",
      "rating": 4.0
    },
  ].toList();

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
                    margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: Image.asset(
                      "assets/ucare.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                    child: IconButton(
                      onPressed: () {
                        //search
                        //untuk menampilkan item. item bisa di looping
                      },
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
                              fit: BoxFit.cover),
                        ),
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
                      }),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map(
                      img,
                      (index, _) {
                        return Container(
                          height: 8,
                          width: 8,
                          margin:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: current == index
                                  ? Colors.black
                                  : Colors.white),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ItemProduk(produk: item),
          ],
        ),
      ),
    );
  }
}

class ItemProduk extends StatefulWidget {
  final List<Map<String, dynamic>> produk;

  const ItemProduk({this.produk});

  @override
  _ItemProdukState createState() => _ItemProdukState();
}

class _ItemProdukState extends State<ItemProduk> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GridView.builder(
        controller: ScrollController(keepScrollOffset: true),
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
            elevation: 5,
            color: Color(0xf2f2f2),
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailProduk(produk: widget.produk[index]),
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
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      '${widget.produk[index]["nama_produk"]}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      '${widget.produk[index]["deskripsi_produk"]}',
                      // overflow: TextOverflow.ellipsis, //untuk memberi titik apabila teks terlalu panjang
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      'Quantity: ${widget.produk[index]["qty"]}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      'Rp. ${widget.produk[index]["price"]}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
