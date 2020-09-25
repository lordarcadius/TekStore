import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
