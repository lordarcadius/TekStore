import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(MaterialApp(
    title: "Fetch Data",
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}
