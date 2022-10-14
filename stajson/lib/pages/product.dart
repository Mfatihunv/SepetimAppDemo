import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stajson/core/colorspalette.dart';
import 'package:stajson/core/customappbar.dart';

import '../widgets/widgets.dart';

class UrunSayfasi extends StatefulWidget with ColorsPalette {
  UrunSayfasi({Key? key}) : super(key: key);

  @override
  State<UrunSayfasi> createState() => _UrunSayfasiState();
}

class _UrunSayfasiState extends State<UrunSayfasi> {
  late Color selectedColor;
  List<Color> colors = [
    Color(0xff52514f),
    Color(0xff0001fc),
    Color(0xff6f7972),
    Color(0xfff5d8c0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Xiaomi Redmi Note 10',
          style: const TextStyle(fontSize: 25, fontFamily: "Lobster"),
        ),
        titleSpacing: 00.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_sharp),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.greenAccent[400],
      ),
      body: ListView(
        children: [
          SafeArea(
              child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    Center(
                      child: SizedBox(
                          width: 300,
                          height: 300,
                          child: Image.asset("assets/png/phone1.jpeg")),
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: Text(
                        'Ürün Açıklaması',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(82, 182, 154, 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('''Otomatik olarak açılıyor, otomatik olarak bağlanıyor

• Tüm Apple aygıtlarınız için kolay kurulum

 • “Hey Siri” diyerek Siri’ye hızlı erişim

• Oynatmak veya bir sonrakine atlamak için çift dokunuş

 • Yeni Apple H1 kulaklık çipiyle aygıtlarınızda  daha hızlı kablosuz bağlantı

• Şarj kutusunda hızlı şarj imkanı • Şarj kutusu, Lightning konnektörüyle şarj edilebilir

• Zengin ve yüksek kalitede ses

• Aygıtlar arasında sorunsuz geçiş

• Şarj Kutusu ile birçok kez şarj ederek gün boyu dinleme ve konuşma imkanı'''),
                    const Center(
                      child: Text(
                        "Renk",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(82, 182, 154, 1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        colorOption(Colors.red),
                        SizedBox(
                          width: 18,
                        ),
                        colorOption(Colors.purple),
                        SizedBox(
                          width: 18,
                        ),
                        colorOption(Colors.blue),
                        SizedBox(
                          width: 18,
                        ),
                        colorOption(Colors.black)
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Center(
                      child: Text(
                        "Kapasite",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(82, 182, 154, 1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        KapasiteSec('64'),
                        const SizedBox(
                          width: 10,
                        ),
                        KapasiteSec('128'),
                        const SizedBox(
                          width: 10,
                        ),
                        KapasiteSec('256'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color.fromRGBO(82, 182, 154, 1)),
                      child: const Center(child: Text('Sepete Ekle')),
                    )
                  ],
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
