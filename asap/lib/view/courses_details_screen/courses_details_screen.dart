import 'package:asap/utils/decorations.dart';
import 'package:asap/view/courses_details_screen/widgets/custom_tv.dart';
import 'package:asap/widgets2/custom_text_form_field.dart';
import 'package:asap/widgets2/custom_icon_button.dart';
import 'package:asap/widgets2/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:asap/widgets2/app_bar/custom_app_bar.dart';
import 'package:asap/widgets2/app_bar/appbar_leading_image.dart';
import 'package:asap/widgets2/app_bar/appbar_subtitle.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/vector1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CoursesDetailsScreen extends StatelessWidget {
  CoursesDetailsScreen({super.key});

  TextEditingController televisionController = TextEditingController();

  TextEditingController televisionController1 = TextEditingController();

  TextEditingController infoController = TextEditingController();

  TextEditingController thumbsupController = TextEditingController();

  TextEditingController televisionController2 = TextEditingController();

  TextEditingController infoController1 = TextEditingController();

  TextEditingController thumbsupController1 = TextEditingController();

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(context),
        resizeToAvoidBottomInset: false,
        body: Container(
            decoration: CustomDecorations.interestedAreaImageDecoration,
            width: double.maxFinite,
            child: SingleChildScrollView(
                child: SizedBox(
                    // height: 1088.v,
                    width: double.maxFinite,
                    child: Stack(children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 24.h),
                              decoration: AppDecoration.gradientGrayToWhiteA,
                              child: CustomImageView(
                                  height: 382.v, width: 305.h))),
                      Opacity(
                          opacity: 1,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup1565,
                          )),

                      // _buildSettings(context),
                      // _buildTelevision2(context),
                      // _buildTelevision4(context),
                      // _buildTen(context),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              height: 3.v,
                              margin: EdgeInsets.only(top: 163.v),
                              child: Column(
                                children: [
                                  AnimatedSmoothIndicator(
                                      activeIndex: 0,
                                      count: 3,
                                      effect: ExpandingDotsEffect(
                                          spacing: 3,
                                          activeDotColor:
                                              appTheme.deepOrangeA20001,
                                          dotColor: appTheme.deepOrange100,
                                          dotHeight: 3.v,
                                          dotWidth: 8.h)),
                                ],
                              ))),
                      // _buildAppBar(context),
                      _buildVector(context),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Column(children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 33.h, top: 226.v),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgUpload,
                                      height: 16.v,
                                      width: 18.h),
                                  Padding(
                                      padding: EdgeInsets.only(left: 10.h),
                                      child: Text("Course Mode :",
                                          style: CustomTextStyles
                                              .titleSmallMedium)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text("Offline",
                                          style: CustomTextStyles
                                              .titleSmallMedium))
                                ])),
                            const SizedBox(
                              height: 15,
                            ),
                            _buildSettings(context),
                            const SizedBox(
                              height: 15,
                            ),
                            _buildTelevision2(context),
                            const SizedBox(
                              height: 15,
                            ),
                            _buildTen(context)
                          ])),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 33.h, top: 186.v),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgClockYellow900,
                                    height: 18.adaptSize,
                                    width: 18.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(left: 11.h),
                                    child: Text("Duration :",
                                        style: CustomTextStyles.bodyMedium15)),
                                Padding(
                                    padding: EdgeInsets.only(left: 3.h),
                                    child: Text("720 Hours",
                                        style:
                                            CustomTextStyles.titleSmallMedium))
                              ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildSettings(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSettingsGray300,
                            height: 20.v,
                            width: 15.h,
                            margin: EdgeInsets.only(bottom: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h, bottom: 1.v),
                            child: Text("Broucher",
                                style: CustomTextStyles.titleSmallMedium)),
                        CustomImageView(
                            imagePath: ImageConstant.imgSettingsGray300,
                            height: 20.v,
                            width: 15.h,
                            margin: EdgeInsets.only(left: 14.h, bottom: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h, top: 2.v),
                            child: Text("Syllabus",
                                style: CustomTextStyles.titleSmallMedium))
                      ])),
                  SizedBox(height: 15.v),
                  Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSettingsYellow90020x14,
                            height: 20.v,
                            width: 14.h,
                            margin: EdgeInsets.only(bottom: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h, top: 2.v),
                            child: Text("Eligibility",
                                style: CustomTextStyles.titleSmallMedium))
                      ])),
                  SizedBox(height: 5.v),
                  Container(
                      width: 248.h,
                      margin: EdgeInsets.only(left: 30.h, right: 46.h),
                      child: Text(
                          "Graduate, preferably in Science, CS, \nIT and EC streams",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleSmallMedium
                              .copyWith(height: 1.40))),
                  SizedBox(height: 14.v),
                  Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text("Training Partner",
                          style: CustomTextStyles.titleSmallMedium)),
                  SizedBox(height: 6.v),
                  Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Row(children: [
                        Container(
                            height: 40.v,
                            width: 67.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.h, vertical: 4.v),
                            decoration: AppDecoration.fillWhiteA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder6),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgImage18,
                                height: 31.v,
                                width: 55.h,
                                alignment: Alignment.topLeft)),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage15,
                            height: 40.v,
                            width: 66.h,
                            radius: BorderRadius.circular(5.h),
                            margin: EdgeInsets.only(left: 10.h))
                      ])),
                  SizedBox(height: 12.v),
                  Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text("Certification Partner",
                          style: CustomTextStyles.titleSmallMedium)),
                  SizedBox(height: 8.v),
                  Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Row(children: [
                        Container(
                            height: 40.v,
                            width: 67.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 13.h, vertical: 2.v),
                            decoration: AppDecoration.fillWhiteA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder6),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgImage65,
                                height: 35.v,
                                width: 40.h,
                                alignment: Alignment.center)),
                        Container(
                            height: 40.v,
                            width: 67.h,
                            margin: EdgeInsets.only(left: 4.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 4.v),
                            decoration: AppDecoration.fillWhiteA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder6),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgImage8,
                                height: 31.v,
                                width: 35.h,
                                alignment: Alignment.topCenter)),
                        Container(
                            height: 40.v,
                            width: 67.h,
                            margin: EdgeInsets.only(left: 4.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.h, vertical: 8.v),
                            decoration: AppDecoration.fillWhiteA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder6),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgImage9,
                                height: 23.v,
                                width: 57.h,
                                alignment: Alignment.topCenter))
                      ])),
                  SizedBox(height: 12.v),
                  SizedBox(
                      width: 325.h,
                      child: Text(
                          "Additional Skill Acquisition Programme (ASAP) Kerala is a Section-8 Company of the Department of Higher Education, Government of Kerala, that focusses on skilling students",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: CustomTextStyles.bodyMediumGray80001
                              .copyWith(height: 1.33))),
                  Opacity(
                      opacity: 0.85,
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Read More",
                                    style: CustomTextStyles.titleSmallMedium_1),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowRightGray900,
                                    height: 7.v,
                                    width: 3.h,
                                    margin: EdgeInsets.only(
                                        left: 6.h, top: 6.v, bottom: 4.v)),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowRightGray900,
                                    height: 7.v,
                                    width: 3.h,
                                    margin: EdgeInsets.only(
                                        left: 3.h, top: 6.v, bottom: 4.v))
                              ])))
                ])));
  }

  /// Section Widget
  Widget _buildTelevision(BuildContext context) {
    return CustomTextFormField(
        controller: televisionController,
        hintText: "Syllabus",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(14.h, 13.v, 15.h, 13.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgTelevisionYellow900,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 46.v));
  }

  /// Section Widget
  Widget _buildTelevision1(BuildContext context) {
    return CustomTextFormField(
        controller: televisionController1,
        hintText: "Eligibility",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(15.h, 14.v, 16.h, 14.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgTelevisionYellow900,
                height: 18.adaptSize,
                width: 18.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 46.v));
  }

  /// Section Widget
  Widget _buildInfo(BuildContext context) {
    return CustomTextFormField(
        controller: infoController,
        hintText: "Course Fee",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(14.h, 16.v, 15.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgInfo, height: 17.v, width: 20.h)),
        prefixConstraints: BoxConstraints(maxHeight: 46.v));
  }

  /// Section Widget
  Widget _buildThumbsup(BuildContext context) {
    return CustomTextFormField(
        controller: thumbsupController,
        hintText: "Scholarship",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(15.h, 14.v, 15.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgThumbsupYellow900,
                height: 20.v,
                width: 18.h)),
        prefixConstraints: BoxConstraints(maxHeight: 46.v));
  }

  /// Section Widget
  Widget _buildTelevision2(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 28.h, right: 28.h, bottom: 0.v),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              // _buildTelevision(context),
              // SizedBox(height: 16.v),
              // _buildTelevision1(context),
              // SizedBox(height: 16.v),
              // _buildInfo(context),
              // SizedBox(height: 16.v),
              // _buildThumbsup(context),

              buildCustomTelevision(
                "Syllabus",
                ImageConstant.imgTelevisionYellow900,
              ),
              SizedBox(height: 4.v),
              buildCustomTelevision(
                "Eligibility",
                ImageConstant.imgTelevisionYellow900,
              ),
              SizedBox(height: 4.v),
              buildCustomTelevision(
                "Course Fee",
                ImageConstant.imgInfo,
              ),
              SizedBox(height: 4.v),
              buildCustomTelevision(
                "Scholarship",
                ImageConstant.imgThumbsupYellow900,
              ),
            ])));
  }

  Widget buildCustomTelevision(String labelText, String imagePath) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(7.h),
              decoration: AppDecoration.outlineGrayD.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: imagePath,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(left: 7.h, top: 6.v, bottom: 6.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.h, top: 4.v, bottom: 4.v),
                    child: Text(
                      labelText,
                      style: CustomTextStyles.titleMediumMedium,
                    ),
                  ),
                  Spacer(),
                  CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.gradientCyanToCyan,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowRightGray900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTelevision3(BuildContext context) {
    return CustomTextFormField(
        controller: televisionController2,
        hintText: "Eligibility",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(15.h, 14.v, 16.h, 14.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgTelevisionYellow900,
                height: 18.adaptSize,
                width: 18.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 46.v));
  }

  /// Section Widget
  Widget _buildInfo1(BuildContext context) {
    return CustomTextFormField(
        controller: infoController1,
        hintText: "Course Fee",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(14.h, 16.v, 15.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgInfo, height: 17.v, width: 20.h)),
        prefixConstraints: BoxConstraints(maxHeight: 46.v));
  }

  /// Section Widget
  Widget _buildThumbsup1(BuildContext context) {
    return CustomTextFormField(
        controller: thumbsupController1,
        hintText: "Scholarship",
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(15.h, 14.v, 15.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgThumbsupYellow900,
                height: 20.v,
                width: 18.h)),
        prefixConstraints: BoxConstraints(maxHeight: 46.v));
  }

  /// Section Widget
  Widget _buildTelevision4(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                  padding: EdgeInsets.all(7.h),
                  decoration: AppDecoration.outlineGrayD
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgTelevisionYellow900,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin:
                            EdgeInsets.only(left: 7.h, top: 6.v, bottom: 6.v)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 15.h, top: 4.v, bottom: 4.v),
                        child: Text("Syllabus",
                            style: CustomTextStyles.titleMediumMedium)),
                    Spacer(),
                    CustomIconButton(
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        padding: EdgeInsets.all(10.h),
                        decoration: IconButtonStyleHelper.gradientCyanToCyan,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgArrowRightGray900))
                  ])),
              SizedBox(height: 16.v),
              // _buildTelevision3(context),
              // SizedBox(height: 16.v),
              // _buildInfo1(context),
              // SizedBox(height: 16.v),
              // _buildThumbsup1(context)
            ])));
  }

  /// Section Widget
  Widget _buildApplyNow(BuildContext context) {
    return CustomElevatedButton(
        height: 47.v,
        text: "          Apply Now",
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToCyanDecoration,
        buttonTextStyle: CustomTextStyles.titleMediumWhiteA70001Bold);
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 71.h, vertical: 0),
        decoration: AppDecoration.gradientGrayToGray200,
        child: _buildApplyNow(context));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 65.v,
        leadingWidth: 47.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 32.h, top: 3.v, bottom: 5.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "AI-Machine Learning Developer",
            margin: EdgeInsets.only(left: 15.h)));
  }

  /// Section Widget
  Widget _buildVector(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 0.v),
        child: CarouselSlider.builder(
            options: CarouselOptions(
                height: 153.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  sliderIndex = index;
                }),
            itemCount: 2,
            itemBuilder: (context, index, realIndex) {
              return Vector1ItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
