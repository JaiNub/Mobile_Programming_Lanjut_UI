import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final String deskripsi;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.deskripsi,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

// ignore: non_constant_identifier_names
List<Product> demo_product = [
  Product(
    image: "assets/foto_produk/produk_0.jpg",
    title: "Jacket Coach Limited Edition",
    price: 150000,
    deskripsi: "Deskripsi 1",
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/foto_produk/produk_1.jpg",
    title: "Work Jacket Vintage",
    price: 100000,
    deskripsi: "Deskripsi 2",
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/foto_produk/produk_2.jpg",
    title: "Jacket Vintage Terlaris",
    price: 180000,
    deskripsi: "Deskripsi 3",
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/foto_produk/produk_3.jpg",
    title: "Sepatu Nike Like New",
    price: 250000,
    deskripsi: "Deskripsi 4",
    bgColor: const Color(0xFFFEFBF9),
  ),
];
