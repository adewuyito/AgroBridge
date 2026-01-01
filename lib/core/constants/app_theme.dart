// base theme
import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:flutter/material.dart';

final baseTheme = ThemeData.light();

// base border
final inputBorderBase = OutlineInputBorder(
  borderRadius: BorderRadius.circular(24),
  borderSide: BorderSide(color: Color.fromRGBO(30, 89, 37, 1)),

  // borderSide: BorderSide(color: ColorName.borderGrey),
);

final ThemeData appTheme = baseTheme.copyWith(
  scaffoldBackgroundColor: Color.fromRGBO(251, 251, 251, 1),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    unselectedIconTheme: IconThemeData(color: Color.fromARGB(1, 0, 33, 22)),
    selectedIconTheme: IconThemeData(color: Color.fromARGB(1, 0, 33, 22)),
    unselectedLabelStyle: AppFonts.inter.medium14.withColor(Color(0xFF002116)),
    selectedLabelStyle: AppFonts.inter.medium14.withColor(Color(0xFF002116)),
    showSelectedLabels: true,
    showUnselectedLabels: true,
    backgroundColor: Colors.white,
  ),
  // primaryColor: appColors.blue,
  appBarTheme: AppBarTheme(
    // backgroundColor: appColors.white,
    elevation: 0,
    // foregroundColor: appColors.black,
  ),
  colorScheme: baseTheme.colorScheme.copyWith(
    surface: Colors.white,
    // secondary: appColors.blue,
  ),
  // dividerColor: appColors.dividerGrey,
  brightness: Brightness.light,
  buttonTheme: baseTheme.buttonTheme.copyWith(
    height: 55,
    minWidth: double.infinity,
    // buttonColor: ColorName.background,
    textTheme: ButtonTextTheme.normal,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromRGBO(30, 89, 37, 1),
      foregroundColor: Colors.white,
      textStyle: AppFonts.inter.medium14.withColor(Colors.white),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      minimumSize: const Size(double.infinity, 55),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    ),
  ),
  tabBarTheme: baseTheme.tabBarTheme.copyWith(
    labelStyle: baseTheme.textTheme.bodySmall!.copyWith(
      // color: appColors.blue,
      fontWeight: FontWeight.w600,
    ),
    unselectedLabelStyle: baseTheme.textTheme.bodySmall!.copyWith(
      // color: appColors.black,
    ),
    indicatorSize: TabBarIndicatorSize.tab,
    // indicatorColor: appColors.blue,
    // labelColor: appColors.blue,
    // unselectedLabelColor: appColors.black,
  ),
  inputDecorationTheme: baseTheme.inputDecorationTheme.copyWith(
    // obscuringCharacter: '*',
    suffixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 24),
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    border: inputBorderBase,
    enabledBorder: inputBorderBase,
    focusedBorder: inputBorderBase,
    errorBorder: OutlineInputBorder(
      // borderSide: BorderSide(color: ColorName.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      // borderSide: BorderSide(color: ColorName.error),
    ),
    fillColor: Colors.transparent,
    filled: false,
    hintStyle: AppFonts.inter.medium14,
    labelStyle: TextStyle(
      fontSize: 12,
      // color: appColors.lightGreyAAABAD,
      fontWeight: FontWeight.w400,
      // fontFamily: FontFamily.generalSans,
    ),
  ),
  // textTheme: hpTextTheme.apply(fontFamily: FontFamily.montserrat),
);
