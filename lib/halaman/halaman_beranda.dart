import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../komponen/kategori.dart';
import '../komponen/produk_populer.dart';
import '../komponen/produk_rekomendasi.dart';
import '../komponen/produk_terbaru.dart';
import '../model/constants.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => new _BerandaState();
}

class _BerandaState extends State<Beranda> {
  final List<String> images = [
    'assets/foto_slider/banner-1.jpg',
    'assets/foto_slider/banner-2.jpg',
    'assets/foto_slider/banner-3.png',
    'assets/foto_slider/banner-4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            height: 36,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari di sini Jon',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon:
                    Icon(Icons.search, color: Colors.grey[400], size: 20),
                contentPadding: EdgeInsets.symmetric(vertical: 8),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'assets/logo/qazwsx.png',
                  height: 80,
                  width: 160,
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                height: 200.0,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: images.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage(item),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const Categories(),
            const ProdukTerbaru(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'assets/foto_slider/banner-5.jpg',
                ),
              ),
            ),
            const ProdukPopuler(),
            const ProdukRekomendasi(),
          ],
        ),
      ),
    );
  }
}
