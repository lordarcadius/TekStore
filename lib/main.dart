import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_screen.dart';
import 'package:flutter_catalog/pages/login_screen.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: HomeScreen(),
        themeMode: ThemeMode.light,
        theme: MyThemes.lightTheme(context),
        darkTheme: MyThemes.darkTheme(context),
        //initialRoute: "/home",
        routes: {
          "/": (context) => HomeScreen(),
          MyRoutes.homeRoute: (context) => HomeScreen(),
          MyRoutes.loginRoute: (context) => LoginScreen(),
        },
      ),
    );
  }
}
