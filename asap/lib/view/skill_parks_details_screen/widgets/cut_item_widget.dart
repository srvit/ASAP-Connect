import 'package:asap/widgets2/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export.dart';

// ignore: must_be_immutable
class CutItemWidget extends StatelessWidget {
  const CutItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 1.v,
              bottom: 2.v,
            ),
            child: CustomIconButton(
              height: 43.adaptSize,
              width: 43.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillPink,
              child: CustomImageView(
                imagePath: ImageConstant.imgCut,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "19",
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
                SizedBox(height: 3.v),
                Opacity(
                  opacity: 0.75,
                  child: Text(
                    "Skill Sectors",
                    style: CustomTextStyles.titleSmallGray900Medium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
