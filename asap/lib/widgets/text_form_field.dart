import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:asap/utils/colors.dart';
import 'package:asap/utils/text_styles.dart';
import 'package:asap/widgets/custom_surfix_icon.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.svgIcon,
    required this.validator,
    this.obscureText,
    this.keyboardType,
    this.maxLengthEnabled = false,
    required this.focusNode,
    required this.nextFocusNode,
    this.isName = false, // Added isName parameter
    this.readOnly = false,
    this.onTap,
  });

  final TextEditingController controller;
  final String hintText;
  final String svgIcon;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final bool maxLengthEnabled;
  final FocusNode focusNode;
  final FocusNode nextFocusNode;
  final bool isName; // Added isName parameter
  final bool readOnly;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
        ),
        child: TextFormField(
          textCapitalization:
              isName ? TextCapitalization.words : TextCapitalization.none,
          readOnly: readOnly,
          onTap: onTap,
          obscureText: obscureText ?? false,
          keyboardType: readOnly ? null : keyboardType,
          controller: controller,
          validator: validator,
          inputFormatters: maxLengthEnabled
              ? [
                  LengthLimitingTextInputFormatter(10),
                ]
              : null,
          style: GoogleFonts.mulish(
            textStyle: const TextStyle(
              color: AppColor.secondaryColor,
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
          ),
          decoration: InputDecoration(
            errorStyle: CustomStyles.errorText,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 0.0,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 0.0,
              ),
            ),
            filled: true,
            fillColor: AppColor.backgroundColor,
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 0.0,
              ),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(
                color: Colors.red,
                width: 0.0,
              ),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(
                color: Colors.red,
                width: 0.0,
              ),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: AppColor.secondaryColor.withOpacity(0.4),
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            prefixIcon: CustomSurffixIcon(svgIcon: svgIcon),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
          ),
          focusNode: focusNode,
          onEditingComplete: () {
            FocusScope.of(context).requestFocus(nextFocusNode);
          },
        ),
      ),
    );
  }
}
