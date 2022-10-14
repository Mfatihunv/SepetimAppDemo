import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stajson/core/colorspalette.dart';
import 'package:stajson/pages/urunler.dart';
import 'package:stajson/widgets/widgets.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  late String Url;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            // ignore: prefer_const_constructors
            Expanded(
              child: TextField(
                style: TextStyle(color: Colors.red),
                textInputAction: TextInputAction.done,
                decoration: _InputDecarotor().emailInput,
              ),
            ),
            IconButton(
                color: Colors.green,
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                ))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Urunler();
            }));
          },
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 8.0 / 9.0,
            children: [
              CategoriesWidget(
                  "assets/png/televizyon.png", "Televizyon", context),
              CategoriesWidget("assets/png/phones.jpg", "Telefon", context),
              CategoriesWidget("assets/png/leptops.jpg", "Leptop", context),
              CategoriesWidget(
                  "assets/png/bilgisayar.jpg", "Bilgisayar", context),
              CategoriesWidget("assets/png/giyilebilir.jpg",
                  "Giyilebilir Teknoloji", context),
              CategoriesWidget("assets/png/saat.jpg", "Saat", context),
              CategoriesWidget("assets/png/tshirt.jpg", "T-Shirt", context),
              CategoriesWidget("assets/png/pantolon.jpg", "Pantolon", context),
              CategoriesWidget(
                  "assets/png/sweatshirt.png", "SweatShirt", context),
              CategoriesWidget("assets/png/ayakkabı.jpg", "Ayakkabı", context),
              CategoriesWidget(
                  "assets/png/dambıl.jpg", "Spor Aletleri", context),
              CategoriesWidget(
                  "assets/png/beyazesya.jpg", "Beyaz Eşya", context),
            ],
          ),
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
          borderSide: BorderSide(width: 3, color: ColorsPalette.Keppel)),
      prefixIcon: IconButton(
          color: ColorsPalette.SmithApple,
          onPressed: () {},
          icon: Icon(Icons.search)),
      border: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: 3, color: ColorsPalette.Crayola), //<-- SEE HERE
      ),
      labelText: 'Ara..',
      labelStyle: TextStyle(color: ColorsPalette.DarkCrayola));
}

class LanguageItems {
  static const welcomeTitle = "Merhaba";
  static const mailTitle = "Mail";
}
