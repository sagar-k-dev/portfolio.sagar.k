import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'theme.dart';

class Styles {
  const Styles._();

  // Font family
  static final String fontFamily = GoogleFonts.poppins().fontFamily!;

  // Regular styles
  static TextStyle black16 = TextStyle(
    color: Colors.black,
    fontSize: Dimens.sixteen,
    fontFamily: fontFamily,
  );

  static TextStyle white16 = TextStyle(
    color: Colors.white,
    fontSize: Dimens.sixteen,
    fontFamily: fontFamily,
  );
  static TextStyle white20 = TextStyle(
    color: Colors.white,
    fontSize: Dimens.twenty,
    fontFamily: fontFamily,
  );
  static TextStyle white22 = TextStyle(
    color: Colors.white,
    fontSize: Dimens.twentyTwo,
    fontFamily: fontFamily,
  );
  static TextStyle white24 = TextStyle(
    color: Colors.white,
    fontSize: Dimens.twentyFour,
    fontFamily: fontFamily,
  );
  static TextStyle white30 = TextStyle(
    color: Colors.white,
    fontSize: Dimens.thirty,
    fontFamily: fontFamily,
  );
  static TextStyle white14 = TextStyle(
    color: Colors.white,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamily,
  );
  static TextStyle white12 = TextStyle(
    color: Colors.white,
    fontSize: Dimens.twelve,
    fontFamily: fontFamily,
  );
  static TextStyle white10 = TextStyle(
    color: Colors.white,
    fontSize: Dimens.ten,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w100,
  );
  static TextStyle white8 = TextStyle(
    color: Colors.white,
    fontSize: Dimens.eight,
    fontFamily: fontFamily,
  );

  // Bold styles
  static TextStyle blackBold16 = TextStyle(
    color: Colors.black,
    fontSize: Dimens.sixteen,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );

  static TextStyle whiteBold16 = TextStyle(
    color: Colors.white,
    fontSize: Dimens.sixteen,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );

  // Additional styles
  static TextStyle heading = TextStyle(
    color: Colors.white,
    fontSize: Dimens.thirtyTwo,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
    letterSpacing: 1.2,
  );

  static TextStyle subheading = TextStyle(
    color: Colors.white,
    fontSize: Dimens.twenty,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
  );
}
