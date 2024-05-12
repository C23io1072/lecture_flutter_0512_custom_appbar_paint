import 'package:flutter/material.dart';
import 'package:lecture_flutter/screens/home_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleBtmNaviBarScreen extends StatefulWidget {
  const GoogleBtmNaviBarScreen({super.key});

  @override
  State<GoogleBtmNaviBarScreen> createState() => _MainPageState();
}

class _MainPageState extends State<GoogleBtmNaviBarScreen> {
  var tabIndex = 0;
  final body = [
    Container(
      color: Colors.red,
    ),
    Container(color: Colors.grey),
    Container(color: Colors.green),
    Container(
      color: Colors.blue,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Navigation Bar'),
        centerTitle: false,
        backgroundColor: Colors.amber,
      ),
      body: body[tabIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            padding: const EdgeInsets.all(16),
            onTabChange: (index) {
              setState(() {
                tabIndex = index;
              });
            },
            tabs: const [
              // GButton(icon: Icons.home),
              // GButton(
              //   icon: Icons.favorite_border,
              // ),
              // GButton(icon: Icons.search),
              // GButton(icon: Icons.settings),
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.favorite_border, text: 'Like'),
              GButton(icon: Icons.search, text: 'Search'),
              GButton(icon: Icons.settings, text: 'Settings'),
            ],
          ),
        ),
      ),
    );
  }
}
