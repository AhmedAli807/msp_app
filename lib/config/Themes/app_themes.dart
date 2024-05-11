import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msp_app/utils/constants/color_assets.dart';

ThemeData appTheme() {
  return ThemeData(
      fontFamily: GoogleFonts.poppins().toString(),
      primaryColor: ColorAssets.mainColor,
      scaffoldBackgroundColor: ColorAssets.scaffoldBackground,
      hintColor: ColorAssets.hintColor,
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorAssets.mainColor,
          elevation: 0,
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)));
}
