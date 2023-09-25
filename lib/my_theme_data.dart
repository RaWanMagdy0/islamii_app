import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{

  static const Color primary=Color(0xFFB7935F);
  static const Color blackColor=Color(0xFF242424);
  static ThemeData lightTheme=  ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme:AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,

      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          color: blackColor,
          fontSize: 25.0,
          fontWeight: FontWeight.w600,
        ),
        bodySmall: GoogleFonts.elMessiri(
          color: Colors.black,
          fontSize: 25.0,
          fontWeight: FontWeight.w400,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        backgroundColor: primary,
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,
      )
  );
  static ThemeData darkTheme=  ThemeData();

}