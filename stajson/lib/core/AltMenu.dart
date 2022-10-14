import 'package:flutter/material.dart';
import 'package:stajson/core/AltMenu.dart';
import 'package:stajson/pages/categories.dart';
import '../pages/mainpage.dart';
import '../pages/markalar.dart';
import '../pages/product.dart';
import '../pages/urunler.dart';

class AltMenu extends StatefulWidget {
  AltMenu({Key? key}) : super(key: key);

  @override
  State<AltMenu> createState() => _bottomNavState();
}

class _bottomNavState extends State<AltMenu> {
  int SelectedIndex = 0;

  List pages = [
    const IHomePage(),
    const CategoriesPage(),
    UrunSayfasi(),
    Markalar(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[SelectedIndex],
      bottomNavigationBar: NavigationBar(
          destinations: [
            InkWell(
              onTap: () {
                setState(() {
                  KullanilanIconlar.home = Icons.home_filled;
                });
              },
              child: NavigationDestination(
                  icon: Icon(KullanilanIconlar.home), label: 'Anasayfa'),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  KullanilanIconlar.home = Icons.home_filled;
                });
              },
              child: NavigationDestination(
                  icon: Icon(KullanilanIconlar.favoriler),
                  label: 'Kategoriler'),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  KullanilanIconlar.home = Icons.home_filled;
                });
              },
              child: NavigationDestination(
                  icon: Icon(KullanilanIconlar.sepet), label: 'Sepetim'),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  KullanilanIconlar.home = Icons.home_filled;
                });
              },
              child: NavigationDestination(
                  icon: Icon(KullanilanIconlar.profil), label: 'Ürünler'),
            ),
          ],
          selectedIndex: SelectedIndex,
          onDestinationSelected: (value) {
            setState(() {
              SelectedIndex = value;
            });
          }),
    );
  }
}

class KullanilanIconlar {
  static late IconData home = Icons.home_outlined;
  static late IconData favoriler = Icons.category_outlined;
  static late IconData sepet = Icons.shopping_bag_outlined;
  static late IconData profil = Icons.person_outline;
}
