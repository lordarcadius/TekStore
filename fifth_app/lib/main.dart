import 'package:flutter/material.dart';
import 'pages/homepage.dart';

void main() {
  runApp(MaterialApp(
    title: "Fourth App",
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.red),
  ));
}