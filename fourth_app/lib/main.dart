import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Third App",
    home: ThirdApp(),
    theme: ThemeData(primarySwatch: Colors.red),
  ));
}

class ThirdApp extends StatefulWidget {
  @override
  _ThirdAppState createState() => _ThirdAppState();
}

class _ThirdAppState extends State<ThirdApp> {
  TextEditingController _nameController = TextEditingController();
  var textValue = "Change me";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Fourth App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: [
                Image.asset(
                  "assets/me.jpg",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  textValue,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: "Write something here.",
                      labelText: "Name",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
/*             DrawerHeader(
              child: Text(
                "Hello, This is Vipul",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ), */

            UserAccountsDrawerHeader(
              accountName: Text("Vipul Jha"),
              accountEmail: Text("vipuljha08@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              subtitle: Text("Edit your profile"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About Us"),
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share this app"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          textValue = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
