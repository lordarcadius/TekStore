import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Center(
          child: Container(
            child: Text('Welcome to $days Days of Flutter'),
          ),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
