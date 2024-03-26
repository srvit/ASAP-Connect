import 'package:flutter/material.dart';
import 'package:asap/core/app_export2.dart';

// ignore: must_be_immutable
class SixtythreeItemWidget extends StatelessWidget {
  const SixtythreeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Opacity(
        opacity: 0.6,
        child: SizedBox(
          width: 54.h,
          child: Text("data"),
          // child: Divider(
          //   color: theme.colorScheme.onPrimary.withOpacity(0.56),
          // ),
        ),
      ),
    );
  }
}
