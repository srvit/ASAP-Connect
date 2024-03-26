// ignore_for_file: prefer_const_constructors

import 'package:asap/core/app_export.dart';
import 'package:asap/widgets2/custom_image_view.dart';
import 'package:asap/widgets2/custom_outlined_button.dart';
import 'package:flutter/widgets.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ApplynowItemWidget extends StatelessWidget {
  const ApplynowItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      padding: EdgeInsets.only(
        left: 1.h,
        top: 1.v,
        right: 1.h,
        bottom: 1.v,
      ),
      strokeWidth: 1.h,
      gradient: LinearGradient(
        begin: Alignment(0.5, 0),
        end: Alignment(0.5, 1),
        colors: [
          appTheme.lightBlueA100,
          appTheme.lightBlue300,
          appTheme.lightBlue10001,
        ],
      ),
      corners: Corners(
        topLeft: Radius.circular(19),
        topRight: Radius.circular(19),
        bottomLeft: Radius.circular(19),
        bottomRight: Radius.circular(19),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.9,
        decoration: AppDecoration.gradientGrayToGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder18,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgAdaniSkillDevelopmntLogo43x98,
                    height: 52.v,
                    width: 120.h,
                    margin: EdgeInsets.only(
                      top: 2.v,
                      bottom: 7.v,
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      CustomOutlinedButton(
                        text: "Apply Now",
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientBlueToLightBlueDecoration,
                      ),
                      SizedBox(height: 5.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 5.h),
                          child: Text(
                            "3 Months",
                            style: CustomTextStyles.labelLargeMedium_1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.v),
            OutlineGradientButton(
              padding: EdgeInsets.only(
                left: 1.h,
                top: 1.v,
                right: 1.h,
              ),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [
                  appTheme.lightBlueA100,
                  appTheme.lightBlue300.withOpacity(0.37),
                  appTheme.lightBlue10001,
                ],
              ),
              corners: Corners(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 5.v,
                ),
                decoration: AppDecoration.gradientGrayToGray5002.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL18,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.v),
                    Text(
                      "Competitive Analysis of Bikes",
                      style: CustomTextStyles.titleSmallMedium_1,
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
