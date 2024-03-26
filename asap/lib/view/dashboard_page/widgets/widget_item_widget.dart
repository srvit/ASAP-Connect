import 'package:asap/widgets2/custom_image_view.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export.dart';

// ignore: must_be_immutable
class WidgetItemWidget extends StatelessWidget {
  const WidgetItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.v,
      width: 165.h,
      padding: EdgeInsets.symmetric(
        horizontal: 40.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgAdaniSkillDevelopmntLogo,
        height: 46.v,
        width: 78.h,
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
