import 'package:asap/view/courses_details_screen/courses_details_screen.dart';
import 'package:asap/view_model/course_details.dart';
import 'package:asap/widgets3/network_image.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export2.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EightyItemWidget extends StatelessWidget {
  dynamic controller;
  final String title;
  final String location;
  final String timeText;
  final String imagePath;
  final bool isOnline;
  final String unit;
  final String querry;

  EightyItemWidget(
      {super.key,
      required this.title,
      required this.location,
      required this.timeText,
      required this.imagePath,
      required this.isOnline,
      required this.unit,
      required this.querry,
      this.controller});
  DetailsController detailsController = Get.put(DetailsController());

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80.v,
            width: 96.h,
            margin: EdgeInsets.only(bottom: 23.v),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 78.h),
                  child: SvgPicture.asset(
                    isOnline
                        ? 'assets/images/online.svg'
                        : 'assets/images/offline.svg',
                  ),
                ),
                CustomImageView2(
                  fit: BoxFit.cover,
                  imagePath: imagePath,
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            // Wrap title with Expanded widget
            child: Padding(
              padding: EdgeInsets.only(
                top: 2.v,
                right: 1.h,
                bottom: 7.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  SizedBox(height: 6.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClock,
                        height: 13.adaptSize,
                        width: 13.adaptSize,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 1.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "Course Duration : $timeText ${getUnitText()}",
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup1914,
                        height: 14.v,
                        width: 12.h,
                        margin: EdgeInsets.only(bottom: 3.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          location,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 7.v),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .35,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8.v),
                          child: GestureDetector(
                            onTap: () => controller.fetchCourseDetails(querry),
                            child: Text(
                              "View Details",
                              style: CustomTextStyles.labelLarge12,
                            ),
                          ),
                        ),
                        Container(
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(
                            left: 3.h,
                            bottom: 7.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.h,
                            vertical: 5.v,
                          ),
                          decoration:
                              AppDecoration.gradientLightBlueToCyan.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder3,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            alignment: Alignment.centerRight,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getUnitText() {
    switch (unit) {
      case "1":
        return "Hours";
      case "2":
        return "Days";
      case "3":
        return "Months";
      default:
        return "Hours"; // Default to "Hours" if unit is not provided or invalid
    }
  }
}
