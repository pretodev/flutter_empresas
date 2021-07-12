import 'package:empresas_flutter/app/theme/ioasys_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IoasysTheme {
  static ThemeData primary(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ThemeData(
      textTheme: GoogleFonts.rubikTextTheme(textTheme),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: IoasysColors.inputBg,
        hintStyle: GoogleFonts.rubik(
          fontSize: 18,
          fontWeight: FontWeight.w300,
          color: IoasysColors.inputTxt,
        ),
        labelStyle: GoogleFonts.rubik(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: IoasysColors.inputTxt,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(4),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(4),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: IoasysColors.error),
          borderRadius: BorderRadius.circular(4),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: IoasysColors.primary,
          elevation: 0,
          minimumSize: Size.fromHeight(48.0),
          textStyle: GoogleFonts.rubik().copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
