import 'package:asap_student_app/utils/colors.dart';
import 'package:asap_student_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class TextColumn extends StatelessWidget {
  const TextColumn({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.press,
  });

  final String firstText;
  final String secondText;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          firstText,
          style: TextStyle(fontSize: getProportionateScreenWidth(14)),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            secondText,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
              color: AppColor.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
