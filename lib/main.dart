
import 'package:examapp2/screen/cart/Cart_screen.dart';
import 'package:examapp2/screen/detail/Detail_screen.dart';
import 'package:examapp2/screen/home/Home_screen.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const HomeScreen(),
        'detail':(context) => const DetailScreen(),
        'cart': (context) => const CartScreen()
      },
    ),
  );
}

