import 'package:asap/utils/text_styles.dart';
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
        Text(firstText, style: CustomStyles.muslishText),
        GestureDetector(
          onTap: press,
          child: Text(secondText, style: CustomStyles.muslishOrangeText),
        ),
      ],
    );
  }
}
