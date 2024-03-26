import 'package:asap/widgets2/custom_elevated_button.dart';
import 'package:asap/widgets2/custom_image_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export.dart';

// ignore: must_be_immutable
class Applynow1ItemWidget extends StatelessWidget {
  const Applynow1ItemWidget({super.key});

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
        begin: const Alignment(0.5, 0),
        end: const Alignment(0.5, 1),
        colors: [
          appTheme.lightBlueA100,
          appTheme.lightBlue300,
          appTheme.lightBlue10001,
        ],
      ),
      corners: const Corners(
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
          children: [
            SizedBox(height: 9.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgAdaniSkillDevelopmntLogo45x119,
                    height: 62.v,
                    width: 163.h,
                  ),
                  Spacer(),
                  _buildApplyNow(context),
                ],
              ),
            ),
            SizedBox(height: 8.v),
            OutlineGradientButton(
              padding: EdgeInsets.only(
                left: 1.h,
                top: 1.v,
                right: 1.h,
              ),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                begin: const Alignment(0.5, 0),
                end: const Alignment(0.5, 1),
                colors: [
                  appTheme.lightBlueA100,
                  appTheme.lightBlue300.withOpacity(0.37),
                  appTheme.lightBlue10001,
                ],
              ),
              corners: const Corners(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 17.h,
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
                    Text(
                      "Java Developer",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 1.v),
                    Opacity(
                      opacity: 0.85,
                      child: Text(
                        "Infopark Kochi, Kerala 682042",
                        style: CustomTextStyles.labelLargeGray900,
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

  /// Section Widget
  Widget _buildApplyNow(BuildContext context) {
    return CustomElevatedButton(
      text: "Apply Now",
      margin: EdgeInsets.only(
        left: 11.h,
        bottom: 36.v,
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientCyanToIndigoDecoration,
    );
  }
}
