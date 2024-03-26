import 'package:asap/services/shared_pref.dart';
import 'package:asap/utils/text_styles.dart';
import 'package:asap/view/splash_screen.dart';
import 'package:asap/view_model/login_controller.dart';
import 'package:asap/view_model/user_controller.dart';
import 'package:asap/widgets/snackbar_messenger.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export2.dart';
import 'package:get/get.dart';

// ignore_for_file: must_be_immutable
class SidemenuDraweritem extends StatelessWidget {
  const SidemenuDraweritem({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 36.h,
            vertical: 37.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 6.v),
              SizedBox(
                height: 552.v,
                width: 257.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 2.h,
                          right: 205.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.h,
                          vertical: 17.v,
                        ),
                        decoration: AppDecoration.outlineOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder25,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.myProfile,
                              height: 18.v,
                              width: 15.h,
                              alignment: Alignment.centerLeft,
                            ),
                            SizedBox(height: 29.v),
                            CustomImageView(
                              imagePath: ImageConstant.enrolledCourses,
                              height: 16.v,
                              width: 14.h,
                            ),
                            SizedBox(height: 29.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup1849,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                            SizedBox(height: 29.v),
                            CustomImageView(
                              imagePath: ImageConstant.skillsLoans,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                            SizedBox(height: 29.v),
                            CustomImageView(
                              imagePath: ImageConstant.scholarships,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                            SizedBox(height: 27.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgTelevisionGray800,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                            SizedBox(height: 31.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgLockGray800,
                              height: 16.v,
                              width: 18.h,
                            ),
                            SizedBox(height: 29.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgUserGray800,
                              height: 16.v,
                              width: 15.h,
                            ),
                            SizedBox(height: 27.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup1855,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              alignment: Alignment.centerLeft,
                            ),
                            SizedBox(height: 27.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup1843,
                              height: 16.v,
                              width: 19.h,
                              alignment: Alignment.centerLeft,
                            ),
                            SizedBox(height: 9.v),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 20.h,
                          left: 73.h,
                          right: 60.h,
                          bottom: 22.v,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                              opacity: 0.75,
                              child: Text(
                                "Community",
                                style: CustomTextStyles
                                    .titleMediumOnPrimarySemiBold,
                              ),
                            ),
                            SizedBox(height: 22.v),
                            Opacity(
                              opacity: 0.75,
                              child: Text(
                                "Interested Areas",
                                style: CustomTextStyles
                                    .titleMediumOnPrimarySemiBold,
                              ),
                            ),
                            SizedBox(height: 22.v),
                            Opacity(
                              opacity: 0.75,
                              child: Text(
                                "Screen test",
                                style: CustomTextStyles
                                    .titleMediumOnPrimarySemiBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: 396.v,
                        width: 257.h,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 10.v,
                                  right: 138.h,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hi,",
                                      style:
                                          CustomTextStyles.labelLargeSemiBold,
                                    ),
                                    SizedBox(height: 3.v),
                                    GetBuilder<UserController>(
                                      builder: (controller) {
                                        final user = controller
                                                .existingUser?.firstname ??
                                            controller.newUser?.firstname;
                                        final user2 =
                                            controller.existingUser?.lastname ??
                                                controller.newUser?.lastname;
                                        final localStorage =
                                            SharedPref.instence.getName();
                                        if (user != null && user2 != null) {
                                          return Text(
                                            user + user2,
                                            style: CustomTextStyles
                                                .titleMediumOnPrimary,
                                          );
                                        } else if (user != null &&
                                            user2 == null) {
                                          return Text(
                                            user,
                                            style: CustomTextStyles
                                                .titleMediumOnPrimary,
                                          );
                                        } else if (localStorage != null) {
                                          return Text(
                                            localStorage,
                                            style: CustomTextStyles
                                                .titleMediumOnPrimary,
                                          );
                                        } else {
                                          return Text(
                                            'User',
                                            style: CustomTextStyles
                                                .titleMediumOnPrimary,
                                          ); // Handle the case where user data is still loading
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            _buildSixtyTwo(context),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(right: 78.h),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 28.v,
                      ),
                      decoration: AppDecoration.outlineOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder25,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUserGray80018x16,
                            height: 18.v,
                            width: 16.h,
                            margin: EdgeInsets.only(right: 1.h),
                          ),
                          SizedBox(height: 23.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgCalendar,
                            height: 20.v,
                            width: 18.h,
                            margin: EdgeInsets.only(right: 1.h),
                          ),
                          SizedBox(height: 28.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgTrophy,
                            height: 19.v,
                            width: 20.h,
                          ),
                          SizedBox(height: 27.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgVideoCamera,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                            margin: EdgeInsets.only(right: 1.h),
                          ),
                          SizedBox(height: 27.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowDown,
                            height: 15.adaptSize,
                            width: 15.adaptSize,
                            margin: EdgeInsets.only(right: 1.h),
                          ),
                          SizedBox(height: 9.v),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 23.h,
                        top: 15.v,
                        bottom: 29.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: 0.75,
                            child: Text(
                              "Settings",
                              style:
                                  CustomTextStyles.titleMediumOnPrimarySemiBold,
                            ),
                          ),
                          SizedBox(height: 23.v),
                          Opacity(
                            opacity: 0.75,
                            child: Text(
                              "Terms & Conditions",
                              style:
                                  CustomTextStyles.titleMediumOnPrimarySemiBold,
                            ),
                          ),
                          SizedBox(height: 23.v),
                          Opacity(
                            opacity: 0.75,
                            child: Text(
                              "Refund & Cancellation",
                              style:
                                  CustomTextStyles.titleMediumOnPrimarySemiBold,
                            ),
                          ),
                          SizedBox(height: 23.v),
                          Opacity(
                            opacity: 0.75,
                            child: Text(
                              "App Info",
                              style:
                                  CustomTextStyles.titleMediumOnPrimarySemiBold,
                            ),
                          ),
                          SizedBox(height: 23.v),
                          Opacity(
                            opacity: 0.75,
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(
                                        'Confirm Log Out',
                                        style: CustomStyles.muslishTitleText,
                                      ),
                                      content: Text(
                                        'Are you sure you want to Log out?',
                                        style: CustomStyles.muslishSignOutText,
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Get.back(); // Dismiss the dialog
                                          },
                                          child: Text(
                                            'Go back',
                                            style:
                                                CustomStyles.muslishSignOutText,
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () async {
                                            await SharedPref.instence.signout();
                                            Get.find<LoginController>()
                                                .phoneController
                                                .clear();
                                            Get.showSnackbar(
                                              getxSnackbar(
                                                message: " Logged out",
                                                isError: false,
                                              ),
                                            );
                                            Get.offAll(
                                                () => const SplashScreen());
                                          },
                                          child: Text(
                                            'Log out',
                                            style:
                                                CustomStyles.errorSignOutText,
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Text(
                                "Logout",
                                style: CustomTextStyles
                                    .titleMediumOnPrimarySemiBold,
                              ),
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
    );
  }

  /// Section Widget
  Widget _buildSixtyTwo(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 73.h, top: 6.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              behavior: HitTestBehavior
                  .translucent, // or HitTestBehavior.deferToChild
              onTap: () => Navigator.pop(context),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowLeft,
                alignment: Alignment.centerRight,
              ),
            ),
            SizedBox(height: 84.v),
            Opacity(
              opacity: 0.75,
              child: Text(
                "My Profile",
                style: CustomTextStyles.titleMediumOnPrimarySemiBold,
              ),
            ),
            SizedBox(height: 22.v),
            Opacity(
              opacity: 0.75,
              child: Text(
                "Enrolled Courses",
                style: CustomTextStyles.titleMediumOnPrimarySemiBold,
              ),
            ),
            SizedBox(height: 22.v),
            Opacity(
              opacity: 0.75,
              child: Text(
                "Payments",
                style: CustomTextStyles.titleMediumOnPrimarySemiBold,
              ),
            ),
            SizedBox(height: 22.v),
            Opacity(
              opacity: 0.75,
              child: Text(
                "Skills Loans",
                style: CustomTextStyles.titleMediumOnPrimarySemiBold,
              ),
            ),
            SizedBox(height: 22.v),
            Opacity(
              opacity: 0.75,
              child: Text(
                "Scholarships",
                style: CustomTextStyles.titleMediumOnPrimarySemiBold,
              ),
            ),
            SizedBox(height: 22.v),
            Opacity(
              opacity: 0.75,
              child: Text(
                "Events History",
                style: CustomTextStyles.titleMediumOnPrimarySemiBold,
              ),
            ),
            SizedBox(height: 22.v),
            Opacity(
              opacity: 0.75,
              child: Text(
                "Jobs Applied",
                style: CustomTextStyles.titleMediumOnPrimarySemiBold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
