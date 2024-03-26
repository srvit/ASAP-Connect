import 'package:asap/core/app_export.dart';
import 'package:asap/services/shared_pref.dart';
import 'package:asap/utils/text_styles.dart';
import 'package:asap/view/sidemenu_draweritem/sidemenu_draweritem.dart';
import 'package:asap/view_model/dashboardcontroller%20.dart';
import 'package:asap/view_model/recommented.dart';
import 'package:asap/view_model/upcoming_events.dart';
import 'package:asap/view_model/user_controller.dart';
import 'package:asap/widgets2/custom_search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/contrast_item_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'widgets/widget_item_widget.dart';
import 'widgets/fiftysix_item_widget.dart';
import 'widgets/applynow_item_widget.dart';
import 'widgets/register_item_widget.dart';
import 'widgets/applynow1_item_widget.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int sliderIndex = 0;

  int sliderIndex1 = 0;

  int sliderIndex2 = 0;

  int sliderIndex3 = 0;

  int sliderIndex4 = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  UserController userController = Get.find();
  DashboardController dashboardController = Get.put(DashboardController());
  UpcomingEventsController upcomingEventsController =
      Get.put(UpcomingEventsController());
  RecommentedController recommentedController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const SidemenuDraweritem(),
      resizeToAvoidBottomInset: false,
      body: Container(
        height: 1782.v,
        width: double.maxFinite,
        decoration: AppDecoration.fillWhiteA,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup1474,
              height: 1890.v,
              width: 390.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        height: 1666.v,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(bottom: 16.v),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 1666.v,
                                width: 374.h,
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    _buildSearch(context),
                                    _buildDigitalMarketing(context),
                                    _buildApplyNow(context),
                                  ],
                                ),
                              ),
                            ),
                            _buildRegister(context),
                            _buildApplyNow1(context),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 10.h,
          right: 10.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            OutlineGradientButton(
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
                  appTheme.lightBlue400,
                  appTheme.cyan40002,
                ],
              ),
              corners: const Corners(
                topLeft: Radius.circular(11),
                topRight: Radius.circular(11),
                bottomLeft: Radius.circular(11),
                bottomRight: Radius.circular(11),
              ),
              child: CustomSearchView(
                textStyle: CustomStyles.muslishText,
                onChanged: (value) {
                  // Store the text in the UserController
                  userController.setText(value);
                },
                controller: userController.searchController,
                hintText: "Search Courses",
              ),
            ),
            SizedBox(height: 12.v),
            Container(
              margin: EdgeInsets.only(right: 1.h),
              decoration: AppDecoration.gradientBlueToGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder13,
              ),
              child: OutlineGradientButton(
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
                  topLeft: Radius.circular(13),
                  topRight: Radius.circular(13),
                  bottomLeft: Radius.circular(13),
                  bottomRight: Radius.circular(13),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 8.v,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBookmark,
                        height: 74.v,
                        width: 61.h,
                        margin: EdgeInsets.only(top: 3.v),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            top: 9.v,
                            bottom: 14.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GetBuilder<UserController>(
                                builder: (controller) {
                                  final user =
                                      controller.existingUser?.firstname ??
                                          controller.newUser?.firstname;
                                  final user2 =
                                      controller.existingUser?.lastname ??
                                          controller.newUser?.lastname;
                                  final localStorage =
                                      SharedPref.instence.getName();
                                  if (user != null && user2 != null) {
                                    return Text(
                                      user + user2,
                                      style:
                                          CustomTextStyles.titleMediumGray80001,
                                    );
                                  } else if (user != null && user2 == null) {
                                    return Text(
                                      user,
                                      style:
                                          CustomTextStyles.titleMediumGray80001,
                                    );
                                  } else if (localStorage != null) {
                                    return Text(
                                      localStorage,
                                      style:
                                          CustomTextStyles.titleMediumGray80001,
                                    );
                                  } else {
                                    return Text(
                                      'User',
                                      style:
                                          CustomTextStyles.titleMediumGray80001,
                                    ); // Handle the case where user data is still loading
                                  }
                                },
                              ),
                              SizedBox(height: 6.v),
                              Container(
                                width: 246.h,
                                margin: EdgeInsets.only(right: 2.h),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Profile ${dashboardController.dashboardData?.progression ?? 0}%",
                                      style: theme.textTheme.labelLarge,
                                    ),
                                    const Spacer(),
                                    Text(
                                      "Update ",
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgArrowRightGray900,
                                      margin: EdgeInsets.only(
                                        left: 8.h,
                                        top: 5.v,
                                        bottom: 5.v,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Row(
                                children: [
                                  Container(
                                    height: 3.v,
                                    width: 24.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.deepOrangeA200,
                                      borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(11.h),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 3.v,
                                    width: 24.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.deepOrangeA200,
                                    ),
                                  ),
                                  Container(
                                    height: 3.v,
                                    width: 24.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.deepOrangeA200,
                                    ),
                                  ),
                                  Container(
                                    height: 3.v,
                                    width: 24.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.orange100,
                                    ),
                                  ),
                                  Container(
                                    height: 3.v,
                                    width: 24.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.orange100,
                                    ),
                                  ),
                                  Container(
                                    height: 3.v,
                                    width: 24.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.orange100,
                                    ),
                                  ),
                                  Container(
                                    height: 3.v,
                                    width: 24.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.orange100,
                                    ),
                                  ),
                                  Container(
                                    height: 3.v,
                                    width: 24.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.orange100,
                                    ),
                                  ),
                                  Container(
                                    height: 3.v,
                                    width: 24.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.orange100,
                                    ),
                                  ),
                                  Container(
                                    height: 3.v,
                                    width: 24.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.orange100,
                                      borderRadius: BorderRadius.horizontal(
                                        right: Radius.circular(11.h),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 17.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Text(
                  "On Going Course",
                  style: theme.textTheme.titleSmall,
                ),
              ),
            ),
            SizedBox(height: 3.v),
            Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: OutlineGradientButton(
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
                    appTheme.cyan400,
                  ],
                ),
                corners: const Corners(
                  topLeft: Radius.circular(23),
                  topRight: Radius.circular(23),
                  bottomLeft: Radius.circular(23),
                  bottomRight: Radius.circular(23),
                ),
                child: Container(
                  width: 354.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.outline.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder23,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 3.v),
                      Text(
                        "Small Category Drone Pilot Training",
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 10.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          right: 11.h,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage71,
                              height: 75.v,
                              width: 64.h,
                              radius: BorderRadius.circular(
                                10.h,
                              ),
                              margin: EdgeInsets.only(bottom: 1.v),
                            ),
                            Container(
                              width: 224.h,
                              margin: EdgeInsets.only(left: 16.h),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 5.v),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 1.h),
                                          child: Row(
                                            children: [
                                              Text(
                                                "CSP : ",
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 7.h),
                                                child: Text(
                                                  "Chathannur, Palakkad ",
                                                  style: theme
                                                      .textTheme.labelLarge,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 3.v),
                                        Padding(
                                          padding: EdgeInsets.only(left: 1.h),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Trainer: ",
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 9.h),
                                                child: Text(
                                                  "Aswathi V",
                                                  style: theme
                                                      .textTheme.labelLarge,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 6.v),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 1.v),
                                              child: Text(
                                                "15/30",
                                                style: CustomTextStyles
                                                    .labelLargeMedium_1,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 6.h),
                                              child: Text(
                                                "Session Completed",
                                                style: CustomTextStyles
                                                    .labelLargeMedium_1,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 2.v),
                                        Container(
                                          height: 7.v,
                                          width: 186.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.gray30001,
                                            borderRadius: BorderRadius.circular(
                                              3.h,
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              3.h,
                                            ),
                                            child: LinearProgressIndicator(
                                              value: 0.51,
                                              backgroundColor:
                                                  appTheme.gray30001,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 8.h,
                                      top: 59.v,
                                    ),
                                    child: Text(
                                      "30%",
                                      style:
                                          CustomTextStyles.titleSmallYellow900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 29.v),
            Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                right: 4.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Recommended Courses",
                    style: CustomTextStyles.titleMediumDeeporangeA200,
                  ),
                  const Spacer(),
                  Text(
                    "View All",
                    style: CustomTextStyles.titleSmallMedium_1,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    margin: EdgeInsets.only(
                      left: 5.h,
                      top: 7.v,
                      bottom: 6.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      top: 7.v,
                      bottom: 6.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
            SingleChildScrollView(
              child: Column(
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 155.v,
                      initialPage: 0,
                      autoPlay: false,
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (
                        index,
                        reason,
                      ) {
                        setState(() {
                          sliderIndex = index;
                        });
                      },
                    ),
                    itemCount: recommentedController.recommentedCourses.length,
                    itemBuilder: (context, index, realIndex) {
                      return ContrastItemWidget(
                        duration: recommentedController
                            .recommentedCourses[index].duration,
                        imageUrl:
                            'https://asapapi.srvinfotech.com/${recommentedController.recommentedCourses[index].image}',
                        mode: recommentedController
                            .recommentedCourses[index].mode,
                        name: recommentedController
                            .recommentedCourses[index].name,
                        unit: recommentedController
                            .recommentedCourses[index].unit,
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 3.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: sliderIndex,
                  count: recommentedController.recommentedCourses.length,
                  axisDirection: Axis.horizontal,
                  effect: ExpandingDotsEffect(
                    spacing: 3,
                    activeDotColor: appTheme.deepOrangeA20001,
                    dotColor: appTheme.deepOrange100,
                    dotHeight: 3.v,
                    dotWidth: 8.h,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyThree(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: OutlineGradientButton(
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
            appTheme.blueGray100,
          ],
        ),
        corners: const Corners(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
          bottomLeft: Radius.circular(28),
          bottomRight: Radius.circular(28),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.gradientBlueToGray50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder28,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Top Recruiters",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 57.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.h,
                    crossAxisSpacing: 10.h,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const WidgetItemWidget();
                  },
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDigitalMarketing(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildFortyThree(context),
            SizedBox(height: 16.v),
            Container(
              height: 3.v,
              child: AnimatedSmoothIndicator(
                activeIndex: 0,
                count: 3,
                effect: ExpandingDotsEffect(
                  spacing: 3,
                  activeDotColor: appTheme.deepOrangeA20001,
                  dotColor: appTheme.deepOrange100,
                  dotHeight: 3.v,
                  dotWidth: 8.h,
                ),
              ),
            ),
            SizedBox(height: 27.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 11.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recently Viewed Course",
                    style: theme.textTheme.titleMedium,
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.v),
                    child: Text(
                      "View All",
                      style: CustomTextStyles.titleSmallMedium_1,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    margin: EdgeInsets.only(
                      left: 5.h,
                      top: 6.v,
                      bottom: 8.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      top: 6.v,
                      bottom: 8.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                right: 6.h,
              ),
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 155.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (
                    index,
                    reason,
                  ) {
                    setState(() {
                      sliderIndex1 = index;
                    });
                  },
                ),
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  return const FiftysixItemWidget();
                },
              ),
            ),
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 3.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: sliderIndex1,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  effect: ExpandingDotsEffect(
                    spacing: 3,
                    activeDotColor: appTheme.deepOrangeA20001,
                    dotColor: appTheme.deepOrange100,
                    dotHeight: 3.v,
                    dotWidth: 8.h,
                  ),
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
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 6.h,
          bottom: 461.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                right: 22.h,
              ),
              child: _buildJobs(
                context,
                jobs: "Internship ",
                viewAll: "View All",
              ),
            ),
            SizedBox(height: 1.v),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 115.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (
                  index,
                  reason,
                ) {
                  setState(() {
                    sliderIndex2 = index;
                  });
                },
              ),
              itemCount: 2,
              itemBuilder: (context, index, realIndex) {
                return const ApplynowItemWidget();
              },
            ),
            SizedBox(height: 16.v),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 3.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: sliderIndex2,
                  count: 2,
                  axisDirection: Axis.horizontal,
                  effect: ExpandingDotsEffect(
                    spacing: 3,
                    activeDotColor: appTheme.deepOrangeA20001,
                    dotColor: appTheme.deepOrange100,
                    dotHeight: 3.v,
                    dotWidth: 8.h,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 21.h,
          top: 573.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Upcoming Events",
                    style: CustomTextStyles.titleMediumDeeporangeA200,
                  ),
                  const Spacer(),
                  Text(
                    "View All",
                    style: CustomTextStyles.titleSmallMedium_1,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    margin: EdgeInsets.only(
                      left: 5.h,
                      top: 6.v,
                      bottom: 7.v,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      margin: EdgeInsets.only(
                        left: 2.h,
                        top: 6.v,
                        bottom: 7.v,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 9.v),
            upcomingEventsController.upcomingEvents.isEmpty
                ? Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(right: 25.h),
                    height: 200,
                    child: Center(
                      child: Text(
                        'No events are available right now',
                        style: CustomStyles.muslishText,
                      ),
                    ),
                  )
                : CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 218.v,
                      initialPage: 0,
                      autoPlay: false,
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (
                        index,
                        reason,
                      ) {
                        setState(() {
                          sliderIndex3 = index;
                        });
                      },
                    ),
                    itemCount: upcomingEventsController.upcomingEvents.length,
                    itemBuilder: (context, index, realIndex) {
                      return RegisterItemWidget(
                        titleText: upcomingEventsController
                            .upcomingEvents[index].name!,
                        imageUrl:
                            "'https://asapapi.srvinfotech.com/${upcomingEventsController.upcomingEvents[index].uploadedFile!}",
                        secondText:
                            "${upcomingEventsController.upcomingEvents[index].startDate!}, ${upcomingEventsController.upcomingEvents[index].venue!}",
                      );
                    },
                  ),
            SizedBox(height: 16.v),
            SizedBox(
              height: 3.v,
              child: AnimatedSmoothIndicator(
                activeIndex: sliderIndex3,
                count: upcomingEventsController.upcomingEvents.length,
                axisDirection: Axis.horizontal,
                effect: ExpandingDotsEffect(
                  spacing: 3,
                  activeDotColor: appTheme.deepOrangeA20001,
                  dotColor: appTheme.deepOrange100,
                  dotHeight: 3.v,
                  dotWidth: 8.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildApplyNow1(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 631.v,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: 22.h,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 25.h,
                  ),
                  Expanded(
                    child: _buildJobs(
                      context,
                      jobs: "Jobs",
                      viewAll: "View All",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.v),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 139.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (
                  index,
                  reason,
                ) {
                  setState(() {
                    sliderIndex4 = index;
                  });
                },
              ),
              itemCount: 2,
              itemBuilder: (context, index, realIndex) {
                return const Applynow1ItemWidget();
              },
            ),
            SizedBox(height: 14.v),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    height: 3.v,
                    // margin: EdgeInsets.only(left: 144.h),
                    margin: EdgeInsets.only(left: 184.h),

                    child: AnimatedSmoothIndicator(
                      activeIndex: sliderIndex4,
                      count: 2,
                      axisDirection: Axis.horizontal,
                      effect: ExpandingDotsEffect(
                        spacing: 3,
                        activeDotColor: appTheme.deepOrangeA20001,
                        dotColor: appTheme.deepOrange100,
                        dotHeight: 3.v,
                        dotWidth: 8.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildJobs(
    BuildContext context, {
    required String jobs,
    required String viewAll,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 15,
        ),
        Text(
          jobs,
          style: CustomTextStyles.titleMediumDeeporangeA200.copyWith(
            color: appTheme.deepOrangeA200,
          ),
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            viewAll,
            style: CustomTextStyles.titleSmallMedium_1.copyWith(
              color: appTheme.gray900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVector,
          margin: EdgeInsets.only(
            left: 5.h,
            top: 5.v,
            bottom: 8.v,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVector,
          margin: EdgeInsets.only(
            left: 2.h,
            top: 5.v,
            bottom: 8.v,
          ),
        ),
      ],
    );
  }
}
