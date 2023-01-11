import 'package:flutter/material.dart';

const Color lightBlue = Colors.blue;

const Color white = Colors.white;

const Color grey = Colors.grey;

Color darkGrey = Colors.grey.shade700;

class MyTheme {
  static final darkTheme = ThemeData(
    canvasColor: darkGrey,
    appBarTheme: AppBarTheme(
      backgroundColor: darkGrey,
      toolbarTextStyle: const TextStyle(
        color: Color.fromARGB(255, 222, 18, 96),
        fontSize: 22,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.black,
    dialogBackgroundColor: Colors.black,
    fontFamily: 'OpenSans',
    drawerTheme: const DrawerThemeData(
      backgroundColor: grey,
    ),
    iconTheme: const IconThemeData(
      color: lightBlue,
    ),
    cardTheme: CardTheme(
      elevation: 0,
      color: darkGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            fontSize: 16,
            fontFamily: "OpenSans",
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
          ),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          lightBlue,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            color: white,
            fontSize: 16,
            fontFamily: "OpenSans",
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          lightBlue,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        color: white,
        // color: Colors.grey,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      labelSmall: TextStyle(
        color: white,
        // color: Colors.grey,
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      bodyMedium: TextStyle(
        color: white,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      labelMedium: TextStyle(
        color: white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      bodyLarge: TextStyle(
        color: white,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      labelLarge: TextStyle(
        color: white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      titleSmall: TextStyle(
        color: white,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      headlineSmall: TextStyle(
        color: white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      titleMedium: TextStyle(
        color: white,
        fontSize: 22,
        fontWeight: FontWeight.w500,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      headlineMedium: TextStyle(
        color: white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      titleLarge: TextStyle(
        color: white,
        fontSize: 24,
        fontWeight: FontWeight.w500,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      headlineLarge: TextStyle(
        color: white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      displaySmall: TextStyle(
        color: white,
        fontSize: 26,
        fontWeight: FontWeight.w300,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      displayMedium: TextStyle(
        color: white,
        fontSize: 26,
        fontWeight: FontWeight.w500,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      displayLarge: TextStyle(
        color: white,
        fontSize: 26,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
    ),
  );

  static final lightTheme = ThemeData(
    canvasColor: white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue[900],
      toolbarTextStyle: const TextStyle(
        color: Color.fromARGB(255, 222, 18, 96),
        fontSize: 22,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      elevation: 0,
    ),
    scaffoldBackgroundColor: const Color(0xFFF6F6F6),
    dialogBackgroundColor: const Color(0xFFF6F6F6),
    fontFamily: 'OpenSans',
    drawerTheme: const DrawerThemeData(
      backgroundColor: Color(0xFFF6F6F6),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            fontSize: 16,
            fontFamily: "OpenSans",
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
          ),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          lightBlue,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            color: white,
            fontSize: 16,
            fontFamily: "OpenSans",
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          lightBlue,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),
    iconTheme: const IconThemeData(color: lightBlue),
    cardTheme: CardTheme(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    buttonTheme: ButtonThemeData(
      colorScheme: const ColorScheme.light(
        background: lightBlue,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        color: Color(0xFF333333),
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      labelSmall: TextStyle(
        color: Color(0xFF333333),
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      bodyMedium: TextStyle(
        color: Color(0xFF333333),
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      labelMedium: TextStyle(
        color: Color(0xFF333333),
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      bodyLarge: TextStyle(
        color: Color(0xFF171B1E),
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      labelLarge: TextStyle(
        color: Color(0xFF171B1E),
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      titleSmall: TextStyle(
        color: Color(0xFF171B1E),
        fontSize: 20,
        fontWeight: FontWeight.w500,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      headlineSmall: TextStyle(
        color: Color(0xFF171B1E),
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      titleMedium: TextStyle(
        color: Color(0xFF171B1E),
        fontSize: 22,
        fontWeight: FontWeight.w500,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      headlineMedium: TextStyle(
        color: Color(0xFF171B1E),
        fontSize: 22,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      titleLarge: TextStyle(
        color: Color(0xFF171B1E),
        fontSize: 24,
        fontWeight: FontWeight.w500,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      headlineLarge: TextStyle(
        color: Color(0xFF171B1E),
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      displaySmall: TextStyle(
        color: Color(0xFF171B1E),
        fontSize: 26,
        fontWeight: FontWeight.w300,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      displayMedium: TextStyle(
        color: Color(0xFF171B1E),
        fontSize: 26,
        fontWeight: FontWeight.w500,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
      displayLarge: TextStyle(
        color: Color(0xFF171B1E),
        fontSize: 26,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        letterSpacing: 0,
      ),
    ),
  );
}
