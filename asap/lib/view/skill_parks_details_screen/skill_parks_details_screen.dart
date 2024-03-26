import 'package:asap/widgets2/app_bar/custom_app_bar.dart';
import 'package:asap/widgets2/app_bar/appbar_leading_image.dart';
import 'package:asap/widgets2/app_bar/appbar_title.dart';
import 'widgets/cut_item_widget.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'widgets/communicativeenglishtrainer_item_widget.dart';
import 'widgets/description_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/vector_item_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'widgets/television_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SkillParksDetailsScreen extends StatelessWidget {
  SkillParksDetailsScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  int sliderIndex1 = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 1834.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  decoration:
                                      AppDecoration.gradientGrayToWhiteA,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgVector591x302,
                                      height: 591.v,
                                      width: 302.h))),
                          Opacity(
                              opacity: 0.13,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup1565,
                                  height: 348.v,
                                  width: 182.h,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(bottom: 17.v))),
                          Opacity(
                              opacity: 0.1,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup23,
                                  height: 328.v,
                                  width: 222.h,
                                  alignment: Alignment.topLeft)),
                          _buildAppBar(context),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 30.h, top: 86.v),
                                  child: Text(
                                      "Community Skill Park Mananthavady",
                                      style: theme.textTheme.titleMedium))),
                          _buildCut(context),
                          _buildOverview(context),
                          _buildVector(context),
                          _buildTelevision(context),
                          _buildOperatingPartners(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 29.h, top: 6.v, bottom: 5.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "Skill Parks", margin: EdgeInsets.only(left: 19.h)));
  }

  /// Section Widget
  Widget _buildCut(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 15.h, top: 425.v, right: 15.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                  padding: EdgeInsets.only(left: 17.h, right: 12.h),
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 61.v,
                          crossAxisCount: 2,
                          mainAxisSpacing: 11.h,
                          crossAxisSpacing: 11.h),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return CutItemWidget();
                      })),
              SizedBox(height: 21.v),
              OutlineGradientButton(
                  padding: EdgeInsets.only(
                      left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
                  strokeWidth: 1.h,
                  gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        appTheme.lightBlueA100,
                        appTheme.lightBlue300,
                        appTheme.blueGray100
                      ]),
                  corners: Corners(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28),
                      bottomLeft: Radius.circular(28),
                      bottomRight: Radius.circular(28)),
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 10.v),
                      decoration: AppDecoration.gradientBlueToGray50.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder28),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Text("Courses We Offers",
                                    style: theme.textTheme.titleMedium)),
                            SizedBox(height: 8.v),
                            Padding(
                                padding: EdgeInsets.only(right: 1.h),
                                child: ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(height: 7.v);
                                    },
                                    itemCount: 2,
                                    itemBuilder: (context, index) {
                                      return CommunicativeenglishtrainerItemWidget();
                                    })),
                            SizedBox(height: 10.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 1.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text("View All",
                                              style: CustomTextStyles
                                                  .labelLargeMedium),
                                          Container(
                                              width: 16.h,
                                              margin:
                                                  EdgeInsets.only(left: 9.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 4.h,
                                                  vertical: 5.v),
                                              decoration: AppDecoration
                                                  .gradientLightBlueToCyan
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder3),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgArrowRightGray900,
                                                        height: 6.v,
                                                        width: 2.h),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgArrowRightGray900,
                                                        height: 6.v,
                                                        width: 2.h,
                                                        margin: EdgeInsets.only(
                                                            left: 1.h))
                                                  ]))
                                        ]))),
                            SizedBox(height: 2.v)
                          ]))),
              SizedBox(height: 18.v),
              OutlineGradientButton(
                  padding: EdgeInsets.only(
                      left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
                  strokeWidth: 1.h,
                  gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        appTheme.lightBlueA100,
                        appTheme.lightBlue300,
                        appTheme.blueGray100
                      ]),
                  corners: Corners(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  child: Container(
                      padding: EdgeInsets.all(12.h),
                      decoration: AppDecoration.gradientBlueToGray50.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder23),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 4.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Events",
                                          style: theme.textTheme.titleMedium),
                                      Spacer(),
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 2.v),
                                          child: Text("View More",
                                              style: CustomTextStyles
                                                  .labelLargeMedium_1)),
                                      Container(
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 5.h, top: 2.v, bottom: 2.v),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 4.h, vertical: 5.v),
                                          decoration: AppDecoration
                                              .gradientLightBlueToCyan
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder3),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgArrowRight,
                                              height: 6.adaptSize,
                                              width: 6.adaptSize,
                                              alignment: Alignment.centerRight))
                                    ])),
                            SizedBox(height: 9.v),
                            Padding(
                                padding: EdgeInsets.only(right: 1.h),
                                child: ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(height: 11.v);
                                    },
                                    itemCount: 2,
                                    itemBuilder: (context, index) {
                                      return DescriptionItemWidget();
                                    })),
                            SizedBox(height: 4.v)
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildOverview(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 30.h, top: 289.v, right: 26.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Overview", style: theme.textTheme.titleMedium),
                  SizedBox(height: 6.v),
                  SizedBox(
                      width: 333.h,
                      child: Text(
                          "The CSP is a 25,000-sq feet building with fully-furnished classrooms and a 9-kV solar on-grid for training. State of the art advanced electrician lab \nwith advanced home automation equipment's. ",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: CustomTextStyles.labelLargeGray80001
                              .copyWith(height: 1.46))),
                  SizedBox(height: 2.v),
                  Opacity(
                      opacity: 0.85,
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Read More",
                                    style: CustomTextStyles.labelLargeMedium),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowRightGray900,
                                    height: 7.v,
                                    width: 3.h,
                                    margin: EdgeInsets.only(
                                        left: 8.h, top: 5.v, bottom: 3.v)),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowRightGray900,
                                    height: 7.v,
                                    width: 3.h,
                                    margin: EdgeInsets.only(
                                        left: 3.h, top: 5.v, bottom: 3.v))
                              ])))
                ])));
  }

  /// Section Widget
  Widget _buildVector(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 27.h, top: 116.v, right: 30.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CarouselSlider.builder(
                  options: CarouselOptions(
                      height: 162.v,
                      initialPage: 0,
                      autoPlay: true,
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        sliderIndex = index;
                      }),
                  itemCount: 1,
                  itemBuilder: (context, index, realIndex) {
                    return VectorItemWidget();
                  }),
              SizedBox(
                  height: 3.v,
                  child: AnimatedSmoothIndicator(
                      activeIndex: sliderIndex,
                      count: 1,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                          spacing: 3,
                          activeDotColor: appTheme.deepOrangeA20001,
                          dotColor: appTheme.deepOrange100,
                          dotHeight: 3.v,
                          dotWidth: 8.h)))
            ])));
  }

  /// Section Widget
  Widget _buildTelevision(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 441.v),
        child: CarouselSlider.builder(
            options: CarouselOptions(
                height: 190.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  sliderIndex1 = index;
                }),
            itemCount: 2,
            itemBuilder: (context, index, realIndex) {
              return TelevisionItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildOperatingPartners(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 31.h, right: 31.h, bottom: 74.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 3.v,
                          child: AnimatedSmoothIndicator(
                              activeIndex: 0,
                              count: 3,
                              effect: ScrollingDotsEffect(
                                  spacing: 3,
                                  activeDotColor: appTheme.deepOrangeA20001,
                                  dotColor: appTheme.deepOrange100,
                                  dotHeight: 3.v,
                                  dotWidth: 8.h)))),
                  SizedBox(height: 19.v),
                  Text("Operating Partners",
                      style: CustomTextStyles.titleSmallGray80001),
                  SizedBox(height: 7.v),
                  Container(
                      height: 73.v,
                      width: 136.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 18.h, vertical: 8.v),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder6),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgImage1,
                          height: 56.v,
                          width: 100.h,
                          radius: BorderRadius.circular(8.h),
                          alignment: Alignment.center)),
                  SizedBox(height: 25.v),
                  Opacity(
                      opacity: 0.85,
                      child: SizedBox(
                          width: 328.h,
                          child: Text(
                              "Exclusive skill-development centre designed to enhance the employability of educated job aspirants in Kerala",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              style: CustomTextStyles.bodyMediumGray900))),
                  SizedBox(height: 12.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgSettingsYellow900,
                                height: 14.v,
                                width: 12.h,
                                margin: EdgeInsets.only(bottom: 62.v)),
                            Expanded(
                                child: Container(
                                    width: 299.h,
                                    margin: EdgeInsets.only(left: 9.h),
                                    child: Text(
                                        "ASAP Community Skill Park – Mananthavady,\nOpposite Government College Mananthavady, \nNalloornadu PO. Mananthavady, \nWayanad – 670645",
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleSmallGray80001Medium
                                            .copyWith(height: 1.36))))
                          ])),
                  SizedBox(height: 7.v),
                  Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgCall,
                        height: 14.v,
                        width: 13.h,
                        margin: EdgeInsets.only(top: 1.v, bottom: 2.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text("7012999867",
                            style: CustomTextStyles.titleSmallGray80001Medium))
                  ]),
                  SizedBox(height: 13.v),
                  Padding(
                      padding: EdgeInsets.only(right: 54.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgLock,
                                height: 11.v,
                                width: 14.h,
                                margin: EdgeInsets.only(bottom: 5.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Text("cspmananthavady@asapkerala.gov.in",
                                    style: CustomTextStyles
                                        .titleSmallGray80001Medium))
                          ]))
                ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
