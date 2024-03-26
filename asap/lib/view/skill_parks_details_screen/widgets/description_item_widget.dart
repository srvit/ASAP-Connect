import 'package:flutter/material.dart';
import 'package:asap/core/app_export.dart';

// ignore: must_be_immutable
class DescriptionItemWidget extends StatelessWidget {
  const DescriptionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2882x153,
            height: 82.v,
            width: 153.h,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          Container(
            width: 133.h,
            margin: EdgeInsets.only(
              left: 12.h,
              top: 8.v,
              bottom: 7.v,
            ),
            child: Text(
              "Inauguration of ASAP Kerala’s stall at the \nState Science Expo by MP A. A..",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.labelLargeGray80001,
            ),
          ),
        ],
      ),
    );
  }
}
