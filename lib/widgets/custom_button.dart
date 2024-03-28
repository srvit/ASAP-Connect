import 'package:asap_student_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() clickOn;
  final double width;

  const CustomButton({
    required this.text,
    required this.clickOn,
    this.width = 300,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: clickOn,
      child: Container(
        margin: const EdgeInsets.all(0),
        height: 45,
        width: width,
        decoration: BoxDecoration(
          color: AppColor.buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            color: AppColor.backgroundColor,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
