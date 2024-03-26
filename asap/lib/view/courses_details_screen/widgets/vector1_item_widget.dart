import 'package:asap/widgets2/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export.dart';

// ignore: must_be_immutable
class Vector1ItemWidget extends StatelessWidget {
  const Vector1ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 153.v,
        width: 340.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 153.v,
                width: 333.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage14,
                      height: 153.v,
                      width: 333.h,
                      radius: BorderRadius.circular(
                        14.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomIconButton(
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      padding: EdgeInsets.all(13.h),
                      alignment: Alignment.center,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVectorWhiteA70001,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 31.v,
                width: 102.h,
                margin: EdgeInsets.only(top: 14.v),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorYellow900,
                      height: 31.v,
                      width: 102.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 5.v,
                          right: 5.h,
                        ),
                        child: Text(
                          "Most chosen",
                          style: CustomTextStyles.titleSmallWhiteA70001,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
