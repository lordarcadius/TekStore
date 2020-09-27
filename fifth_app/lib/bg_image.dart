import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/me.jpg",
      fit: BoxFit.cover,
    );
  }
}
