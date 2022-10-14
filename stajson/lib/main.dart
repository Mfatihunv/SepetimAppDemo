import 'package:flutter/material.dart';
import 'package:stajson/pages/categories.dart';
import 'package:stajson/pages/logpage.dart';
import 'package:stajson/pages/mainpage.dart';
import 'package:stajson/pages/markalar.dart';
import 'package:stajson/pages/product.dart';
import 'package:stajson/pages/splash.dart';
import 'core/AltMenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splashscreen(),
    );
  }
}
