import 'package:flutter/material.dart';
import '../core/app_export2.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray30001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientPrimaryToCyanDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(11.h),
        gradient: LinearGradient(
          begin: Alignment(0.32, 0),
          end: Alignment(0.58, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.cyan300,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToCyanTL6Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(6.h),
        gradient: LinearGradient(
          begin: Alignment(0.32, 0),
          end: Alignment(0.58, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.cyan300,
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
