import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:ui';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> products = [
      'assets/imag/city1.jpg',
      'assets/imag/city3.jpg',
      'assets/imag/city2.jpg'
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8))),
          title: const Center(
              child: Text(
            " carousile slider",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
          )),
          titleTextStyle: const TextStyle(color: Color.fromARGB(255, 255, 248, 248)),
          backgroundColor: const Color.fromARGB(255, 73, 133, 82),
        ),
        backgroundColor: const Color.fromARGB(255, 210, 229, 245),
        body: Column(
          children: [
            const Center(child: Text("carousile slider")),
            Container(
              height: 500,
              child: CarouselSlider(
                  items: products
                  .map((e,) => Container(
                        child: Center(
                          child: Image.asset(e),
                        ),
                      ),
                      )
                  .toList(),
              options: CarouselOptions(
                  autoPlay: true, aspectRatio: 2, enlargeCenterPage: true)),
            ),
          ],
        ));
  }
}