import 'package:asap/utils/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: AppColor.orangeColor,
  primaryColor: const Color(0xFF51CED6),
  fontFamily: 'Mulish',
  scaffoldBackgroundColor: AppColor.backgroundColor,
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: AppColor.secondaryColor,
    selectionHandleColor: AppColor.secondaryColor,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColor.backgroundColor,
    centerTitle: true,
    // elevation: .5,
    elevation: 0,
    titleTextStyle: TextStyle(
      // fontSize: 18,
      color: AppColor.secondaryColor,
      // fontWeight: FontWeight.w600,
      fontFamily: 'Mulish',
    ),
  ),
);
