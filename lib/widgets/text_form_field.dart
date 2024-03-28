import 'package:asap_student_app/utils/colors.dart';
import 'package:asap_student_app/widgets/custom_surfix_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import for LengthLimitingTextInputFormatter

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.svgIcon,
    required this.validator,
    this.obscureText,
    this.keyboardType,
    this.maxLengthEnabled =
        false, // Add new parameter for controlling maximum length
  });

  final TextEditingController controller;
  final String hintText;
  final String svgIcon;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final bool maxLengthEnabled; // New parameter to enable/disable maximum length

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColor.backgroundColor,
      ),
      child: TextFormField(
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
        controller: controller,
        validator: validator,
        inputFormatters:
            maxLengthEnabled // Apply LengthLimitingTextInputFormatter if maxLengthEnabled is true
                ? [
                    LengthLimitingTextInputFormatter(
                        10), // Limit maximum length to 10 characters
                  ]
                : null, // If maxLengthEnabled is false, don't limit the maximum length
        style: const TextStyle(color: AppColor.textSecondary),
        decoration: InputDecoration(
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: svgIcon),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        ),
      ),
    );
  }
}
