import 'package:asap/core/app_export.dart';
import 'package:asap/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray600,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA70001,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.1, -0.02),
          end: Alignment(0.9, 0.97),
          colors: [
            appTheme.blue20007,
            appTheme.blue5002.withOpacity(0.54),
            appTheme.gray50.withOpacity(0.43),
          ],
        ),
      );
  static BoxDecoration get gradientBlueToGray50 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.1, -0.02),
          end: Alignment(0.9, 0.97),
          colors: [
            appTheme.blue20007,
            appTheme.blue5002.withOpacity(0.54),
            appTheme.gray50.withOpacity(0.43),
          ],
        ),
      );
  static BoxDecoration get gradientBlueToGray501 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.1, -0.02),
          end: Alignment(0.9, 0.97),
          colors: [
            appTheme.blue5001,
            appTheme.blue5002,
            appTheme.gray50,
          ],
        ),
      );
  static BoxDecoration get gradientCyanToDeepPurple => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.14, 0.13),
          end: Alignment(0.88, 0.85),
          colors: [
            appTheme.cyan300,
            appTheme.deepPurple600,
          ],
        ),
      );
  static BoxDecoration get gradientDeepOrangeToDeepOrangeA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.32, -0.47),
          end: Alignment(0.58, 1),
          colors: [
            appTheme.deepOrange300,
            appTheme.deepOrangeA20002,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.34, 0.14),
          end: Alignment(0.91, 0.93),
          colors: [
            appTheme.gray5003,
            appTheme.gray5002,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray200 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.gray30000,
            appTheme.gray200,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray5002 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.34, 0.14),
          end: Alignment(0.91, 0.93),
          colors: [
            appTheme.gray5003,
            appTheme.gray5002,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToWhiteA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.43, 0.17),
          end: Alignment(0.96, 0.98),
          colors: [
            appTheme.gray5001,
            appTheme.blue50,
            appTheme.whiteA70001,
          ],
        ),
      );
  static BoxDecoration get gradientGreenToGreen => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.14, 0.13),
          end: Alignment(0.88, 0.85),
          colors: [
            appTheme.green30002,
            appTheme.green500,
          ],
        ),
      );
  static BoxDecoration get gradientLightBlueToCyan => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.41, 1),
          end: Alignment(1, -0.43),
          colors: [
            appTheme.lightBlue100,
            appTheme.cyan5001,
          ],
        ),
      );
  static BoxDecoration get gradientPurpleToRed => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.14, 0.13),
          end: Alignment(0.88, 0.85),
          colors: [
            appTheme.purple500,
            appTheme.red500,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.lightBlue5066,
        boxShadow: [
          BoxShadow(
            color: appTheme.lightBlue5087,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineCyan => BoxDecoration(
        border: Border.all(
          color: appTheme.cyan40001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray100,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray900 => BoxDecoration(
        color: appTheme.whiteA70001,
        border: Border.all(
          color: appTheme.gray900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGrayD => BoxDecoration(
        color: appTheme.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray3006d.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              3,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineRedA => BoxDecoration(
        border: Border.all(
          color: appTheme.redA100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.whiteA70001,
        border: Border.all(
          color: appTheme.whiteA70001.withOpacity(0.1),
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder38 => BorderRadius.circular(
        38.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL10 => BorderRadius.vertical(
        bottom: Radius.circular(10.h),
      );
  static BorderRadius get customBorderBL18 => BorderRadius.vertical(
        bottom: Radius.circular(18.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder13 => BorderRadius.circular(
        13.h,
      );
  static BorderRadius get roundedBorder18 => BorderRadius.circular(
        18.h,
      );
  static BorderRadius get roundedBorder23 => BorderRadius.circular(
        23.h,
      );
  static BorderRadius get roundedBorder28 => BorderRadius.circular(
        28.h,
      );
  static BorderRadius get roundedBorder3 => BorderRadius.circular(
        3.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
