import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var url = "https://picsum.photos/v2/list";
  var data;
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var response = await http.get(url);
    data = jsonDecode(response.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text("Fetch Data Demo"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: data != null
                ? ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(data[index]["author"]),
                          leading: Image.network(data[index]["download_url"],
                              height: 100, width: 100, fit: BoxFit.cover),
                        ),
                      );
                    },
                    itemCount: data.length,
                  )
                : Center(child: CircularProgressIndicator())),
      ),
    );
  }
}
