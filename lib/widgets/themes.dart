import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        appBarTheme: AppBarTheme(
          color: creamColor,
          elevation: 0.0,
          textTheme: Theme.of(context).textTheme,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        cardColor: Colors.white,
        accentColor: darkBluishColor,
        canvasColor: creamColor,
        buttonColor: darkBluishColor,
        //primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          color: darkCreamColor,
          elevation: 0.0,
          textTheme: Theme.of(context).textTheme,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        cardColor: Colors.black,
        accentColor: Colors.white,
        canvasColor: darkCreamColor,
        buttonColor: lightBluishColor,
        //primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  //Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color(0xff403b58);
  static Color darkCreamColor = Vx.gray900;
  static Color lightBluishColor = Vx.indigo500;
}
