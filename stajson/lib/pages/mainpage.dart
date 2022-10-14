import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stajson/core/customappbar.dart';
import 'package:stajson/pages/categories.dart';
import 'package:stajson/pages/markalar.dart';

import '../core/colorspalette.dart';
import '../pages/mainpage.dart';
import '../pages/product.dart';
import '../widgets/widgets.dart';

class IHomePage extends StatefulWidget with ColorsPalette {
  const IHomePage({Key? key}) : super(key: key);

  @override
  State<IHomePage> createState() => _IHomePageState();
}

class _IHomePageState extends State<IHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              child: Center(
                child: Text('Sepetim',
                    style: Theme.of(context).textTheme.headline3?.copyWith(
                        fontFamily: "Pacifico",
                        color: ColorsPalette.OceanGreen)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 88,
                  child: SizedBox(
                    child: TextField(
                      textInputAction: TextInputAction.done,
                      decoration: _InputDecarotor().emailInput,
                    ),
                  ),
                ),
                Expanded(
                  flex: 12,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: IconButton(
                        color: ColorsPalette.blue,
                        onPressed: () {},
                        icon: Icon(Icons.notifications)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Markalar();
                      }));
                    },
                    child: SizedBox(
                      width: 375,
                      child: Image.asset('assets/png/nikebanner.png'),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Markalar();
                      }));
                    },
                    child: SizedBox(
                      width: 375,
                      child: Image.asset('assets/png/kampanya2.jpg'),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Markalar();
                      }));
                    },
                    child: SizedBox(
                      width: 375,
                      child: Image.asset('assets/png/kampanya3.jpg'),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Markalar();
                      }));
                    },
                    child: SizedBox(
                      width: 375,
                      child: Image.asset('assets/png/kampanya4.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            Center(
                child: Text('Popüler Markalar',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: ColorsPalette.OceanGreen,
                          fontFamily: "Pacifico",
                        ))),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Brandbuttons(
                      'assets/png/adidas.png', 'Adidas', context, widget),
                  Brandbuttons(
                      'assets/png/apple.png', 'Apple', context, widget),
                  Brandbuttons('assets/png/mavi.png', 'Mavi', context, widget),
                  Brandbuttons('assets/png/nike.png', 'Nike', context, widget),
                  Brandbuttons(
                      'assets/png/xiaomi.png', 'Xiaomi', context, widget),
                  Brandbuttons(
                      'assets/png/jj.png', 'Jack & Jones', context, widget),
                  Brandbuttons(
                      'assets/png/philips.png', 'Philips', context, widget),
                  Brandbuttons(
                      'assets/png/koton.png', 'Koton', context, widget),
                  Brandbuttons('assets/png/puma.png', 'Puma', context, widget),
                  Brandbuttons(
                      'assets/png/mango.png', 'Mango', context, widget),
                  Brandbuttons('assets/png/tumu.jpg', 'Tümü', context, widget),
                ],
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text('İndirimli Ürünler',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: ColorsPalette.OceanGreen,
                          fontFamily: "Pacifico",
                        ))),
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
                      child: SizedBox(width: 15)),
                  indirimliurunler('Mi Band 4', 'assets/png/indirimli3.jpg',
                      "100", "200", context),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UrunSayfasi();
                        }));
                      },
                      child: SizedBox(width: 15)),
                  indirimliurunler('Saç Kurutma Makinesi',
                      'assets/png/indirimli4.jpg', "280", "350", context),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UrunSayfasi();
                        }));
                      },
                      child: SizedBox(width: 15)),
                  indirimliurunler('Jabra S725 Kulaklık',
                      'assets/png/indirimli5.jpg', "1299", "1600", context),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UrunSayfasi();
                        }));
                      },
                      child: SizedBox(width: 15)),
                  indirimliurunler('Airmods Pro ', 'assets/png/indirimli6.jpg',
                      "129", "159", context),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UrunSayfasi();
                        }));
                      },
                      child: SizedBox(width: 15)),
                  indirimliurunler('Jbl T85 Kulaklık',
                      'assets/png/indirimli7.jpg', "1099", "1299", context),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UrunSayfasi();
                        }));
                      },
                      child: SizedBox(width: 15)),
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
          ],
        ),
      ),
    );
  }
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
          borderSide: BorderSide(width: 3, color: ColorsPalette.Keppel)),
      prefixIcon: IconButton(
          color: ColorsPalette.blue,
          onPressed: () {},
          icon: Icon(Icons.search)),
      border: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 3, color: ColorsPalette.blue),
      ),
      labelText: 'Ara..',
      labelStyle: TextStyle(color: ColorsPalette.blue));
}
