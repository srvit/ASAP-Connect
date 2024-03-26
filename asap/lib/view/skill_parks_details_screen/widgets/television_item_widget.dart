import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export.dart';

// ignore: must_be_immutable
class TelevisionItemWidget extends StatelessWidget {
  const TelevisionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: OutlineGradientButton(
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
            appTheme.blueGray100,
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 12.v,
          ),
          decoration: AppDecoration.gradientBlueToGray501.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder23,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 2.h,
                  right: 13.h,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage66,
                      height: 79.v,
                      width: 72.h,
                      radius: BorderRadius.circular(
                        16.h,
                      ),
                      margin: EdgeInsets.only(top: 11.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 13.h,
                        bottom: 3.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgTelevisionBlue10001,
                            height: 30.v,
                            width: 35.h,
                            alignment: Alignment.centerRight,
                          ),
                          SizedBox(height: 15.v),
                          Text(
                            "Geethu Chandran",
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 1.v),
                          Opacity(
                            opacity: 0.75,
                            child: Text(
                              "Student Counsellor, Transorze",
                              style: CustomTextStyles.bodyMediumGray90014,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13.v),
              Opacity(
                opacity: 0.75,
                child: SizedBox(
                  width: 308.h,
                  child: ReadMoreText(
                    "I’m extremely grateful to ASAP Kerala for conducting ASPIRE 2023. ASPIRE 2023 opened several doors to various opportunities,  ",
                    trimLines: 3,
                    colorClickableText: appTheme.yellow900,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Read More",
                    moreStyle:
                        CustomTextStyles.bodyMediumNunitoTeal9009e.copyWith(
                      height: 1.46,
                    ),
                    lessStyle:
                        CustomTextStyles.bodyMediumNunitoTeal9009e.copyWith(
                      height: 1.46,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 3.v),
            ],
          ),
        ),
      ),
    );
  }
}
