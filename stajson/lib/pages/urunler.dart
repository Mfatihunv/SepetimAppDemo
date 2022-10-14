import 'package:flutter/material.dart';
import 'package:stajson/pages/product.dart';

import '../core/colorspalette.dart';

import 'categories.dart';

class Urunler extends StatefulWidget {
  const Urunler({Key? key}) : super(key: key);

  @override
  State<Urunler> createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextField(
          style: TextStyle(color: Colors.grey),
          textInputAction: TextInputAction.done,
          decoration: _InputDecarotor().emailInput,
        ),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(5),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: 8.0 / 9.0,
        children: [
          urunler('Iphone X', '16999', 'assets/png/phone1.jpeg', context),
          urunler('Iphone 8', '15999', 'assets/png/phone2.jpeg', context),
          urunler('Iphone 8+', '12999', 'assets/png/phone3.jpeg', context),
          urunler('Iphone 11', '18000', 'assets/png/phone4.jpeg', context),
          urunler('Oppo X5', '12000', 'assets/png/phone5.jpeg', context),
          urunler('Oppo X6', '15499', 'assets/png/phone6.jpeg', context),
          urunler('Samsung S22', '15888', 'assets/png/phone7.jpeg', context),
          urunler('Samsung S21', '15200', 'assets/png/phone8.jpeg', context),
          urunler('Xiaomi Note 10', '12000', 'assets/png/phone9.jpeg', context),
          urunler('Xiaomi Note 8', '99999', 'assets/png/phone10.jpg', context),
        ],
      ),
    );
  }
}

class _InputDecarotor {
  final emailInput = InputDecoration(
      prefixIcon: IconButton(
          color: Colors.grey, onPressed: () {}, icon: Icon(Icons.search)),
      labelText: 'Ara..',
      labelStyle: TextStyle(color: Colors.grey));
}

Widget urunler(String title, String price, String ImgUrl, context) {
  return Center(
    child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return UrunSayfasi();
          }));
        },
        child: Container(
          width: 240,
          height: 320,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                )
              ]),
          child: Container(
              child: Column(
            children: [
              Container(width: 150, height: 150, child: Image.asset(ImgUrl)),
              Text(
                title,
                style: TextStyle(
                    color: ColorsPalette.OceanGreen,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Signica'),
              ),
              Text(
                '$price TL',
                style: TextStyle(
                    fontSize: 20,
                    color: ColorsPalette.SmithApple,
                    fontFamily: 'Signica'),
              ),
            ],
          )),
        )),
  );
}
