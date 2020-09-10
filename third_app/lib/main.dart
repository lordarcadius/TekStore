import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Third App",
    home: ThirdApp(),
  ));
}

class ThirdApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.center,
          child: Container(
            color: Colors.black,
            width: 400,
            height: 200 /* MediaQuery.of(context).size.height */,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.all(8),
                    color: Colors.red,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.all(8),
                    color: Colors.green,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.all(8),
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
