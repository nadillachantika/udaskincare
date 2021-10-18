import 'package:flutter/material.dart';
import 'package:udaskincare/cart/cart_page.dart';
import 'package:udaskincare/home/home_screen.dart';
import 'package:udaskincare/profile/profile_page.dart';

class HomePage extends StatefulWidget {
  final int initTab;

  const HomePage({this.initTab});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectednavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectednavbar = index;
    });
  }

  final _widgetOptions = [
    HomeScreen(),
    Container(),
    Container(),
    ProfilePage(),
  ];

  @override
  void initState() {
    _selectednavbar = widget.initTab ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectednavbar],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.card_travel),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _changeSelectedNavBar,
        currentIndex: _selectednavbar,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/home.png"),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/whistlist.png"),
              ),
              label: 'Wishlist'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/chat.png"),
              ),
              label: 'Chat'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/person.png"),
              ),
              label: 'Profile'),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Color(0xFFA8DCD5D5),
        showSelectedLabels: true,
      ),
    );
  }
}
