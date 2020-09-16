import 'package:flutter/material.dart';

final myTheme = ThemeData(
  // primaryColor: Color.fromRGBO(126, 73, 93, 1),
  // primaryColor: Color.fromRGBO(169, 50, 38, 1),
  primaryColor: Color(0xffFF256C),
  accentColor: Colors.transparent,
  cursorColor: Color(0xffFF256C),
  pageTransitionsTheme: PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
  }),
  // fontFamily: "Poppins",
);
