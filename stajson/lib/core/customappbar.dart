// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

AppBar CustomAppbar(String title) {
  return AppBar(
    title: Text(title),
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
          bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
    ),
    elevation: 0.00,
    backgroundColor: Colors.greenAccent[400],
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
    ],
  );
}
