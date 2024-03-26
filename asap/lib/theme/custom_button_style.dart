import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(
              18.h,
            ),
          ),
        ),
      );
  static ButtonStyle get fillGrray => ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFB4917B),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(
              18.h,
            ),
          ),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientBlueToLightBlueDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(6.h),
        border: Border.all(
          color: appTheme.whiteA70001.withOpacity(0.53),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.teal10038.withOpacity(0.53),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.34, 0),
          end: Alignment(0.91, 0),
          colors: [
            appTheme.blue5003,
            appTheme.lightBlue50,
          ],
        ),
      );
  static BoxDecoration get gradientBlueToLightBlueTL6Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(6.h),
        border: Border.all(
          color: appTheme.whiteA70001.withOpacity(0.53),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.teal10038,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.34, 0),
          end: Alignment(0.91, 0),
          colors: [
            appTheme.blue5003,
            appTheme.lightBlue50,
          ],
        ),
      );
  static BoxDecoration get gradientCyanToIndigoDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(5.h),
        gradient: LinearGradient(
          begin: Alignment(0.32, 0),
          end: Alignment(0.58, 1),
          colors: [
            appTheme.cyan40003,
            appTheme.indigo400,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToCyanDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(6.h),
        gradient: LinearGradient(
          begin: Alignment(0.32, 0),
          end: Alignment(0.58, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.cyan30001,
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
