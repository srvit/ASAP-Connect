import 'package:asap/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() clickOn;
  final double width;
  final RxBool isLoading;

  const CustomButton({
    required this.text,
    required this.clickOn,
    this.width = 300,
    required this.isLoading,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading.value ? null : clickOn,
      child: Container(
        margin: const EdgeInsets.all(0),
        height: 45,
        width: width,
        decoration: BoxDecoration(
          color: AppColor.buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Obx(() => isLoading.value
            ? const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(text,
                style: GoogleFonts.mulish(
                  textStyle: const TextStyle(
                    color: AppColor.backgroundColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ))),
      ),
    );
  }
}
