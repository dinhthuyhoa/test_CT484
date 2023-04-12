import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils.dart';

class BaseTheme {
  static ThemeData themeData = ThemeData(
    fontFamily: GoogleFonts.poppins().fontFamily,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: BaseColor.color1,
      onPrimary: BaseColor.color1,
      secondary: BaseColor.color2,
      onSecondary: BaseColor.color4,
      error: Colors.red,
      onError: Colors.red,
      background: BaseColor.color2,
      onBackground: BaseColor.color2,
      surface: Colors.black,
      onSurface: Colors.black,
    ),
    scaffoldBackgroundColor: BaseColor.color4,
    appBarTheme: AppBarTheme(elevation: 0, backgroundColor: BaseColor.color4),
  );
}
