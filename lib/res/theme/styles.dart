import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'theme.dart';

class Styles {
  const Styles._();

  // Font family
  static final String fontFamily = GoogleFonts.gelasio().fontFamily!;

  // Regular styles
  static TextStyle black16 = TextStyle(
    color: Colors.black,
    fontSize: Dimens.sixteen,
    fontFamily: fontFamily,
  );

  static TextStyle white16 = TextStyle(
    color: Colors.white.withValues(alpha: 0.9),
    fontSize: Dimens.sixteen,
    fontFamily: fontFamily,
  );
  static TextStyle white20 = TextStyle(
    color: Colors.white.withValues(alpha: 0.9),
    fontSize: Dimens.twenty,
    fontFamily: fontFamily,
  );
  static TextStyle white22 = TextStyle(
    color: Colors.white.withValues(alpha: 0.9),
    fontSize: Dimens.twentyTwo,
    fontFamily: fontFamily,
  );
  static TextStyle white24 = TextStyle(
    color: Colors.white.withValues(alpha: 0.9),
    fontSize: Dimens.twentyFour,
    fontFamily: fontFamily,
  );
  static TextStyle white30 = TextStyle(
    color: Colors.white.withValues(alpha: 0.9),
    fontSize: Dimens.thirty,
    fontFamily: fontFamily,
  );
  static TextStyle white14 = TextStyle(
    color: Colors.white.withValues(alpha: 0.9),
    fontSize: Dimens.fourteen,
    fontFamily: fontFamily,
  );
  static TextStyle white12 = TextStyle(
    color: Colors.white.withValues(alpha: 0.9),
    fontSize: Dimens.twelve,
    fontFamily: fontFamily,
  );
  static TextStyle white10 = TextStyle(
    color: Colors.white.withValues(alpha: 0.9),
    fontSize: Dimens.ten,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w100,
  );
  static TextStyle white8 = TextStyle(
    color: Colors.white.withValues(alpha: 0.9),
    fontSize: Dimens.eight,
    fontFamily: fontFamily,
  );
  static TextStyle white6 = TextStyle(
    color: Colors.white.withValues(alpha: 0.9),
    fontSize: Dimens.six,
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
    color: Colors.white.withValues(alpha: 0.9),
    fontSize: Dimens.sixteen,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );

  // Additional styles
  static TextStyle heading = TextStyle(
    color: Colors.white.withValues(alpha: 0.9),
    fontSize: Dimens.thirtyTwo,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
    letterSpacing: 1.2,
  );

  static TextStyle subheading = TextStyle(
    color: Colors.white.withValues(alpha: 0.9),
    fontSize: Dimens.twenty,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
  );
}
