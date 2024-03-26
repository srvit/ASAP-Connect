import 'package:asap/utils/decorations.dart';
import 'package:asap/utils/text_styles.dart';
import 'package:asap/view/list_view_search_result_screen/widgets/eighty_item_widget.dart';
import 'package:asap/view_model/course_details.dart';
import 'package:asap/view_model/search_controller.dart';
import 'package:asap/view_model/user_controller.dart';
import 'package:asap/widgets3/app_bar/custom_app_bar.dart';
import 'package:asap/widgets3/app_bar/appbar_leading_image.dart';
import 'package:asap/widgets3/app_bar/appbar_title.dart';
import 'package:asap/widgets3/custom_search_view.dart';
import 'package:get/get.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export2.dart';

class ListViewSearchResultScreen extends StatelessWidget {
  ListViewSearchResultScreen({super.key});

  DetailsController detailsController = Get.put(DetailsController());
  UserController userController = Get.find();
  QueryController queryController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: _buildAppBar(context),
      body: Container(
        // color: Colors.transparent,
        decoration: CustomDecorations.interestedAreaImageDecoration,
        // height: 778.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                decoration: CustomDecorations.interestedAreaImageDecoration,
                padding: EdgeInsets.symmetric(horizontal: 39.h),
              ),
            ),
            Opacity(
              opacity: 1,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup1565,
              ),
            ),
            _buildEighty(context),
            _buildSearch(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.h,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownOnprimary,
        margin: EdgeInsets.only(
          left: 20.h,
          bottom: 2.v,
        ),
      ),
      // title: GetBuilder<UserController>(
      //   builder: (_) => AppbarTitle(
      //     text: userController.searchText ?? "Search Courses",
      //     margin: EdgeInsets.only(left: 16),
      //   ),
      // ),
    );
  }

  /// Section Widget
  Widget _buildEighty(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 22.h,
          top: 96.v,
          right: 22.h,
        ),
        child: GetBuilder<QueryController>(
          builder: (queryController) {
            if (queryController.searchedCourses.isEmpty) {
              return Center(
                child: Text(
                  "No Such courses available",
                  style: CustomStyles.muslishText,
                ),
              );
            } else {
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: queryController.searchedCourses.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0.v),
                    child: SizedBox(
                      width: 340.h,
                      child: Column(
                        children: [
                          EightyItemWidget(
                            controller: detailsController,
                            querry: queryController.searchedCourses[index].id!,
                            unit: queryController.searchedCourses[index].unit ??
                                "",
                            imagePath:
                                'https://asapapi.srvinfotech.com/${queryController.searchedCourses[index].imageUrl!}',
                            title:
                                queryController.searchedCourses[index].name ??
                                    "Loading",
                            location: "Loading",
                            timeText: queryController
                                    .searchedCourses[index].duration ??
                                "Loading",
                            isOnline:
                                queryController.searchedCourses[index].mode ==
                                        "0"
                                    ? false
                                    : true,
                          ),
                          Opacity(
                            opacity: 0.4,
                            child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.cyan4007e,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20.v, 52.v, 20.v, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
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
                    appTheme.lightBlue400,
                    appTheme.cyan400,
                  ],
                ),
                corners: const Corners(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                child: CustomSearchView(
                  onChanged: (value) {
                    // Store the text in the UserController
                    // userController.setText(value);
                  },
                  controller: userController.searchController,
                  hintText: "Search Courses",
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgSettingsOnprimary,
              height: 21.v,
              width: 18.h,
              margin: EdgeInsets.only(
                left: 8.h,
                top: 11.v,
                bottom: 10.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
