import 'package:flutter/material.dart';
import 'package:stajson/pages/product.dart';
import 'package:stajson/pages/urunler.dart';

import '../core/colorspalette.dart';
import '../widgets/widgets.dart';

class Markalar extends StatefulWidget {
  const Markalar({Key? key}) : super(key: key);

  @override
  State<Markalar> createState() => _MarkalarState();
}

class _MarkalarState extends State<Markalar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              child: Center(
                  child: Column(
                children: [
                  Container(
                      width: 150,
                      height: 150,
                      child: Image.asset('assets/png/logo1.png')),
                  Text('Nike',
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.black,
                            fontFamily: "NIKE",
                          ))
                ],
              )),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(),
                child: TextField(
                  textInputAction: TextInputAction.done,
                  decoration: _InputDecarotor().emailInput,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // SizedBox(
            //   child: Image.asset('assets/png/kampanya.png'),
            // ),

            Center(
                child: Text('Popüler Ürünler',
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.black,
                          fontFamily: "NIKE",
                        ))),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MarkaUrunleri(
                      'Iphone X', '16999', 'assets/png/phone1.jpeg', context),
                  SizedBox(
                    width: 15,
                  ),
                  MarkaUrunleri(
                      'Iphone 8', '15999', 'assets/png/phone2.jpeg', context),
                  SizedBox(
                    width: 15,
                  ),
                  MarkaUrunleri(
                      'Iphone 8+', '12999', 'assets/png/phone3.jpeg', context),
                  SizedBox(
                    width: 15,
                  ),
                  MarkaUrunleri(
                      'Iphone 11', '18000', 'assets/png/phone4.jpeg', context),
                  SizedBox(
                    width: 15,
                  ),
                  MarkaUrunleri(
                      'Oppo X5', '12000', 'assets/png/phone5.jpeg', context),
                  SizedBox(
                    width: 15,
                  ),
                  MarkaUrunleri(
                      'Oppo X6', '15499', 'assets/png/phone6.jpeg', context),
                  SizedBox(
                    width: 15,
                  ),
                  MarkaUrunleri('Samsung S22', '15888',
                      'assets/png/phone7.jpeg', context),
                  SizedBox(
                    width: 15,
                  ),
                  urunler('Samsung S21', '15200', 'assets/png/phone8.jpeg',
                      context),
                  SizedBox(
                    width: 15,
                  ),
                  MarkaUrunleri('Xiaomi Note 10', '12000',
                      'assets/png/phone9.jpeg', context),
                  SizedBox(
                    width: 15,
                  ),
                  MarkaUrunleri('Xiaomi Note 8', '99999',
                      'assets/png/phone10.jpg', context),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
                child: Text('Indirimli Ürünler',
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.black,
                          fontFamily: "NIKE",
                        ))),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return UrunSayfasi();
                      }));
                    },
                    child: indirimliurunler('Airpods Pro',
                        'assets/png/indirimli1.jpg', "1999", "2200", context),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return UrunSayfasi();
                      }));
                    },
                    child: indirimliurunler('Realme C25s 128GB',
                        'assets/png/indirimli2.jpg', "4400", "4800", context),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return UrunSayfasi();
                      }));
                    },
                    child: indirimliurunler('Mi Band 4',
                        'assets/png/indirimli3.jpg', "100", "200", context),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return UrunSayfasi();
                      }));
                    },
                    child: indirimliurunler('Saç Kurutma Makinesi',
                        'assets/png/indirimli4.jpg', "280", "350", context),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return UrunSayfasi();
                      }));
                    },
                    child: indirimliurunler('Jabra S725 Kulaklık',
                        'assets/png/indirimli5.jpg', "1299", "1600", context),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return UrunSayfasi();
                      }));
                    },
                    child: indirimliurunler('Airmods Pro ',
                        'assets/png/indirimli6.jpg', "129", "159", context),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return UrunSayfasi();
                      }));
                    },
                    child: indirimliurunler('Jbl T85 Kulaklık',
                        'assets/png/indirimli7.jpg', "1099", "1299", context),
                  ),
                  SizedBox(width: 15),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return UrunSayfasi();
                      }));
                    },
                    child: indirimliurunler('Asus Tuf Gaming Laptop',
                        'assets/png/indirimli8.jpg', "15999", "16599", context),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MarkaUrunleri(
                  'araba', '15', 'assets/png/indirimli8.jpg', context),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MarkaUrunleri(
                  'araba', '15', 'assets/png/indirimli8.jpg', context),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MarkaUrunleri(
                  'araba', '15', 'assets/png/indirimli8.jpg', context),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MarkaUrunleri(
                  'araba', '15', 'assets/png/indirimli8.jpg', context),
            ),
          ],
        ),
      ),
    );
  }
}

AnimatedContainer _animatedcontainer(int? currentLength) {
  return AnimatedContainer(
    duration: const Duration(seconds: 1),
    height: 10,
    width: 10.0 * (currentLength ?? 0),
    color: Colors.green[100 * ((currentLength ?? 0) ~/ 2)],
  );
}

class _InputDecarotor {
  final emailInput = InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.black)),
      prefixIcon: IconButton(
          color: Colors.black, onPressed: () {}, icon: Icon(Icons.search)),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 3, color: Colors.black),
      ),
      labelText: 'Ürün Ara..',
      labelStyle: TextStyle(color: Colors.black));
}
