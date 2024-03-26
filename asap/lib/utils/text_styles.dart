import 'package:asap/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomStyles {
  static const TextStyle boldText16 = TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: 'Mulish',
  );
  static const TextStyle normalText14 = TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w500);

  static final muslishText = GoogleFonts.mulish(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
  );
  static final muslishSignOutText = GoogleFonts.mulish(
    textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        color: Colors.black),
  );

  static final muslishTitleText = GoogleFonts.mulish(
    textStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
  );
  static final errorText = GoogleFonts.mulish(
    textStyle: const TextStyle(
      color: Colors.red,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
  );

  static final errorSignOutText = GoogleFonts.mulish(
    textStyle: const TextStyle(
      color: Colors.red,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
  );

  static final muslishNormalBoldText = GoogleFonts.mulish(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    ),
  );
  static final phoneHintText = GoogleFonts.mulish(
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
  );

  static final changeMobileText = GoogleFonts.mulish(
    textStyle: const TextStyle(
      color: AppColor.primaryColor,
      fontSize: 13,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
  );
  static final otpPhoneHintText = GoogleFonts.mulish(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
  );
  static final muslishOrangeText = GoogleFonts.mulish(
    textStyle: const TextStyle(
      color: AppColor.primaryColor,
      fontSize: 15,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
  );

  static final splashText = GoogleFonts.mulish(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  );

  static final skipText = GoogleFonts.mulish(
    textStyle: const TextStyle(
      color: AppColor.primaryColor,
      fontSize: 13,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
  );
}
