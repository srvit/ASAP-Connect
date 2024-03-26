import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:asap/core/utils/size_utils.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA70001,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.onPrimary.withOpacity(0.42),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyMedium: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 15.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 13.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 20.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.teal900,
          fontSize: 16.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 15.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF3EADBF),

    // On colors(text colors)
    onPrimary: Color(0X872B2A2A),
    onPrimaryContainer: Color(0XFFEFEFEF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black90007 => Color(0X07000000);

  // Blue
  Color get blue50 => Color(0XFFE9F6FF);
  Color get blue5001 => Color(0XFFE8F5FF);

  // BlueGray
  Color get blueGray100 => Color(0XFFD2D2D2);

  // Cyan
  Color get cyan300 => Color(0XFF50CDD5);
  Color get cyan400 => Color(0XFF35CBD5);
  Color get cyan50 => Color(0XFFE2FAFD);
  Color get cyan5001 => Color(0XFFCAFFF8);
  Color get cyan5002 => Color(0XFFD1FCFF);

  // Cyane
  Color get cyan4007e => Color(0X7E2AC0D4);

  // DeepOrange
  Color get deepOrange100 => Color(0XFFFFD3BD);
  Color get deepOrangeA200 => Color(0XFFFF7937);

  // Gray
  Color get gray300 => Color(0XFFE6E6E6);
  Color get gray30000 => Color(0X00E4E4E4);
  Color get gray30001 => Color(0XFFDBE5E6);
  Color get gray50 => Color(0XFFF2F8FF);
  Color get gray800 => Color(0XFF474747);

  // Grayd
  Color get gray3006d => Color(0X6DD5E0E7);

  // Green
  Color get green500 => Color(0XFF3ECA31);

  // LightBlue
  Color get lightBlue100 => Color(0XFFAEF3FF);
  Color get lightBlue400 => Color(0XFF2FBFFC);
  Color get lightBlue800 => Color(0XFF006AAF);

  // Teal
  Color get teal900 => Color(0XFF003D43);

  // White
  Color get whiteA700 => Color(0XFFFCFEFF);
  Color get whiteA70001 => Color(0XFFFFFFFF);

  // Yellow
  Color get yellow900 => Color(0XFFF26F22);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();