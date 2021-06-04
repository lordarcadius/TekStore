import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
      ),
    );
  }
}
