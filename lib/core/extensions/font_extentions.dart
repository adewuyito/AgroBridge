import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

/// Extension on TextStyle to provide convenient font weight and size combinations
extension GoogleFontsStyleExtension on TextStyle {
  // Font Weight variations
  TextStyle get thin => copyWith(fontWeight: FontWeight.w100);
  TextStyle get extraLight => copyWith(fontWeight: FontWeight.w200);
  TextStyle get light => copyWith(fontWeight: FontWeight.w300);
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);
  TextStyle get black => copyWith(fontWeight: FontWeight.w900);

  // Size variations - common sizes

  TextStyle get size10 => copyWith(fontSize: 10.sp);
  TextStyle get size11 => copyWith(fontSize: 11.sp);
  TextStyle get size12 => copyWith(fontSize: 12.sp);
  TextStyle get size13 => copyWith(fontSize: 13.sp);
  TextStyle get size14 => copyWith(fontSize: 14.sp);
  TextStyle get size15 => copyWith(fontSize: 15.sp);
  TextStyle get size16 => copyWith(fontSize: 16.sp);
  TextStyle get size18 => copyWith(fontSize: 18.sp);
  TextStyle get size20 => copyWith(fontSize: 20.sp);
  TextStyle get size22 => copyWith(fontSize: 22.sp);
  TextStyle get size24 => copyWith(fontSize: 24.sp);
  TextStyle get size28 => copyWith(fontSize: 28.sp);
  TextStyle get size30 => copyWith(fontSize: 30.sp);
  TextStyle get size32 => copyWith(fontSize: 32.sp);
  TextStyle get size36 => copyWith(fontSize: 36.sp);
  TextStyle get size48 => copyWith(fontSize: 48.sp);

  // Combined variations (weight + size)
  TextStyle get thin10 => thin.size10;
  TextStyle get thin12 => thin.size12;
  TextStyle get thin14 => thin.size14;
  TextStyle get thin16 => thin.size16;

  TextStyle get light10 => light.size10;
  TextStyle get light12 => light.size12;
  TextStyle get light14 => light.size14;
  TextStyle get light16 => light.size16;

  TextStyle get regular10 => regular.size10;
  TextStyle get regular12 => regular.size12;
  TextStyle get regular14 => regular.size14;
  TextStyle get regular15 => regular.size15;
  TextStyle get regular16 => regular.size16;
  TextStyle get regular18 => regular.size18;
  TextStyle get regular20 => regular.size20;

  TextStyle get medium10 => medium.size10;
  TextStyle get medium12 => medium.size12;
  TextStyle get medium14 => medium.size14;
  TextStyle get medium15 => medium.size15;
  TextStyle get medium16 => medium.size16;
  TextStyle get medium18 => medium.size18;
  TextStyle get medium20 => medium.size20;

  TextStyle get semiBold12 => semiBold.size12;
  TextStyle get semiBold14 => semiBold.size14;
  TextStyle get semiBold16 => semiBold.size16;
  TextStyle get semiBold18 => semiBold.size18;
  TextStyle get semiBold20 => semiBold.size20;
  TextStyle get semiBold24 => semiBold.size24;

  TextStyle get bold12 => bold.size12;
  TextStyle get bold14 => bold.size14;
  TextStyle get bold16 => bold.size16;
  TextStyle get bold18 => bold.size18;
  TextStyle get bold20 => bold.size20;
  TextStyle get bold24 => bold.size24;
  TextStyle get bold28 => bold.size28;
  TextStyle get bold30 => bold.size30;
  TextStyle get bold32 => bold.size32;

  TextStyle get extraBold20 => extraBold.size20;
  TextStyle get extraBold24 => extraBold.size24;
  TextStyle get extraBold28 => extraBold.size28;
  TextStyle get extraBold32 => extraBold.size32;

  TextStyle get black24 => black.size24;
  TextStyle get black28 => black.size28;
  TextStyle get black32 => black.size32;
  TextStyle get black36 => black.size36;
  TextStyle get black48 => black.size48;

  // Additional utilities
  TextStyle withSize(double size) => copyWith(fontSize: size);
  TextStyle withWeight(FontWeight weight) => copyWith(fontWeight: weight);
  TextStyle withColor(Color color) => copyWith(color: color);
  TextStyle withHeight(double height) => copyWith(height: height);
  TextStyle withLetterSpacing(double spacing) =>
      copyWith(letterSpacing: spacing);
}

/// Convenience class for commonly used fonts
class AppFonts {
  // You can add your most used fonts here for easier access
  static TextStyle get inter => GoogleFonts.inter();
  static TextStyle get roboto => GoogleFonts.roboto();
  static TextStyle get poppins => GoogleFonts.poppins();
  static TextStyle get openSans => GoogleFonts.openSans();
}
