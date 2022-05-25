import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'homepage.dart';

class MasterPage extends StatefulWidget {
  const MasterPage({Key? key}) : super(key: key);

  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  int _currentIndex = 0;

  var pages = [
    HomePage(),
    // AddOrUpdatePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        fixedColor: Colors.red.shade900,
        onTap: (value) => setState(() => _currentIndex = value),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.house, size: 30.0),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore, size: 30.0), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.check_box_outlined, size: 30.0),
              label: 'Mengikuti'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline, size: 30.0),
              label: 'Notifikasi'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/user_profile.png',
                scale: 2.5,
              ),
              label: "Akun"),
        ],
      ),
    );
  }
}
