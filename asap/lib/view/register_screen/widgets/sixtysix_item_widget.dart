import 'package:flutter/material.dart';
import 'package:asap/core/app_export2.dart';

// ignore: must_be_immutable
class SixtysixItemWidget extends StatelessWidget {
  const SixtysixItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.v,
      width: 329.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          6.h,
        ),
        border: Border.all(
          color: appTheme.yellow900,
          width: 1.h,
        ),
      ),
    );
  }
}
