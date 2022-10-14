import 'package:flutter/material.dart';

import '../core/colorspalette.dart';
import '../pages/markalar.dart';
import '../pages/product.dart';

CategoriesWidget(String Url, String title, context) {
  return SizedBox(
    width: 100,
    height: 100,
    child: Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 18.0 / 11.0,
            child: Image.asset(Url),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 12, 16, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Center(
                    child: Text(
                  title,
                  style: TextStyle(
                      color: ColorsPalette.SmithApple,
                      fontSize: 18,
                      fontFamily: 'Pacifico'),
                )),
                const SizedBox(height: 10),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Brandbuttons(
  String url,
  String isim,
  BuildContext context,
  Widget widget,
) {
  double width = MediaQuery.of(context).size.width;
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Markalar();
      }));
    },
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Markalar();
                }));
              },
              child: SizedBox(width: 40, child: Image.asset(url))),
        ),
        Text(isim),
      ],
    ),
  );
}

indirimliurunler(
    String title, String ImgUrl, String newprice, String oldprice, context) {
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
              SizedBox(width: 100, child: Image.asset(ImgUrl)),
              Text(
                title,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Signica'),
              ),
              Text.rich(
                TextSpan(
                  text: 'Size Özel $newprice TL',
                  style: TextStyle(
                      fontSize: 25, color: Colors.pink, fontFamily: 'Ceveat'),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' $oldprice TL',
                        style: const TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 12)),
                    // can add more TextSpans here...
                  ],
                ),
              )
            ],
          )),
        )),
  );
}

Widget MarkaUrunleri(String title, String price, String ImgUrl, context) {
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
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Signica'),
              ),
              Text(
                '$price TL',
                style: TextStyle(
                    fontSize: 20, color: Colors.black, fontFamily: 'Signica'),
              ),
            ],
          )),
        )),
  );
}

Widget colorOption(Color color) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      width: 25,
      height: 25,
    ),
  );
}

Widget KapasiteSec(String kapasite) {
  return Text(
    "$kapasite Gb",
    style: const TextStyle(
      color: Color.fromRGBO(82, 182, 154, 1),
      fontSize: 16,
    ),
  );
}
