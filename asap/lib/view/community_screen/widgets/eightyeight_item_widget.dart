import 'package:flutter/material.dart';
import 'package:asap/core/app_export.dart';

// ignore: must_be_immutable
class EightyeightItemWidget extends StatelessWidget {
  const EightyeightItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder13,
        ),
        child: Container(
          height: 160.v,
          width: 327.h,
          decoration: AppDecoration.gradientGreenToGreen.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder13,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 160.v,
                  width: 163.h,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse154,
                        height: 160.v,
                        width: 163.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 48.h,
                            right: 64.h,
                            bottom: 46.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Events",
                                style: CustomTextStyles.titleMediumWhiteA70001,
                              ),
                              Text(
                                "22",
                                style: theme.textTheme.headlineLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 14.v),
                  child: Text(
                    "Member Since 01.08.2024",
                    style: CustomTextStyles.titleSmallWhiteA70001,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 39.h,
                    right: 176.h,
                    bottom: 46.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Total Members",
                        style: CustomTextStyles.titleMediumWhiteA70001,
                      ),
                      Text(
                        "36",
                        style: theme.textTheme.headlineLarge,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.h),
                  padding: EdgeInsets.symmetric(horizontal: 147.h),
                  decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder38,
                  ),
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.v,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 11.v),
                  child: Text(
                    "Python Community",
                    style: CustomTextStyles.titleMediumWhiteA70001Bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
