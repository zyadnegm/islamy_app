import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class My_theme {
  static const Color primarycolor = Color(0XffB7935F);
  static const Color backycolor = Color(0Xff242424);
  static const Color darkprimarycolor = Color(0Xff141A2E);
  static const Color yellowcolor = Color(0XffFACC1D);

  static ThemeData LightTheme = ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primarycolor,
          onPrimary: backycolor,
          secondary: Colors.white,
          onSecondary: backycolor,
          error: Colors.red,
          onError: Colors.green,
          background: primarycolor,
          onBackground: backycolor,
          surface: Colors.black,
          onSurface: Colors.white),
      appBarTheme: AppBarTheme(
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        iconTheme: IconThemeData(color: primarycolor),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: primarycolor,
        selectedItemColor: backycolor,
        unselectedItemColor: Colors.white,
      ));
  static ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: darkprimarycolor,
          onPrimary: yellowcolor,
          secondary: Colors.white,
          onSecondary: backycolor,
          error: Colors.red,
          onError: Colors.green,
          background: darkprimarycolor,
          onBackground: yellowcolor,
          surface: Colors.black,
          onSurface: Colors.white),
      appBarTheme: AppBarTheme(
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        iconTheme: IconThemeData(color: darkprimarycolor),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.bold, color: yellowcolor),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20, fontWeight: FontWeight.bold, color: yellowcolor),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: darkprimarycolor,
        selectedItemColor: yellowcolor,
        unselectedItemColor: Colors.white,
      ));
}
