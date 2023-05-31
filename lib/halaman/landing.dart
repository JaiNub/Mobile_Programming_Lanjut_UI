import 'package:flutter/material.dart';
import 'halaman_beranda.dart';
import 'halaman_jual.dart';
import 'halaman_notifikasi.dart';
import 'halaman_profil.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new Beranda(),
    new Produk(),
    new Notifikasi(),
    new Profil()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _bottomNavCurrentIndex = index;
            });
          },
          currentIndex: _bottomNavCurrentIndex,
          items: [
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.home,
                color: Colors.pink,
              ),
              icon: new Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.add,
                color: Colors.pink,
              ),
              icon: new Icon(
                Icons.add,
                color: Colors.grey,
              ),
              label: 'Jual',
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.notifications,
                color: Colors.pink,
              ),
              icon: new Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              label: 'Notifikasi',
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.people,
                color: Colors.pink,
              ),
              icon: new Icon(
                Icons.people,
                color: Colors.grey,
              ),
              label: 'Akun',
            ),
          ]),
    );
  }
}
