import 'package:asap/widgets2/custom_elevated_button.dart';
import 'package:asap/widgets2/custom_image_view.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export.dart';

// ignore: must_be_immutable
class FiftysixItemWidget extends StatelessWidget {
  const FiftysixItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155.v,
      width: 349.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage60155x349,
            height: 155.v,
            width: 349.h,
            radius: BorderRadius.circular(
              18.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 65.v,
              width: 349.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 26.h,
                        right: 26.h,
                        bottom: 27.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 7.v,
                      ),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder6,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(
                              left: 4.h,
                              bottom: 8.v,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgContrastGray900,
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 8.adaptSize,
                                    width: 8.adaptSize,
                                    decoration: BoxDecoration(
                                      color: appTheme.yellow900,
                                      borderRadius: BorderRadius.circular(
                                        4.h,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 5.h,
                              bottom: 6.v,
                            ),
                            child: Text(
                              "Offline",
                              style: CustomTextStyles.labelLarge12,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgClock,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(bottom: 8.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 3.h,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "10 Days",
                              style: CustomTextStyles.labelLarge12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _buildDigitalMarketing(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDigitalMarketing(BuildContext context) {
    return CustomElevatedButton(
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(30)),
      height: 36.v,
      width: 349.h,
      text: "Digital Marketing",
      buttonStyle: CustomButtonStyles.fillGrray,
      buttonTextStyle: CustomTextStyles.titleSmallWhiteA70001,
      alignment: Alignment.bottomCenter,
    );
  }
}
