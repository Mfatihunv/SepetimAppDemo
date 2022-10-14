import 'package:flutter/material.dart';
import 'package:stajson/core/AltMenu.dart';

import 'logpage.dart';

void main() {
  runApp(MaterialApp(home: splashscreen()));
}

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/png/splash.jpg"),
                  fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
