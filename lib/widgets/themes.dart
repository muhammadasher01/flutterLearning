import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {

  ThemeData lightTheme(BuildContext context) =>
      ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: GoogleFonts
            .lato()
            .fontFamily,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
              color: Colors.black
          ),
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16
          ),
        )
      );


  ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark
  );

}
