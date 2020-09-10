import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My Awesome App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Awesome App"),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                //color: Colors.teal,
                gradient:
                    LinearGradient(colors: [Colors.red, Colors.orange]),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange,
                    blurRadius: 35,
                    //offset: Offset(2.0, 5.0),
                  )
                ]),
            child: Text(
              "Hello Flutter",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
