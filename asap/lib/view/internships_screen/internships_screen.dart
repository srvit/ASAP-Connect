import 'package:asap/widgets2/app_bar/custom_app_bar.dart';
import 'package:asap/widgets2/app_bar/appbar_leading_image.dart';
import 'package:asap/widgets2/app_bar/appbar_title.dart';
import 'package:asap/widgets2/app_bar/appbar_trailing_image.dart';
import 'package:asap/widgets2/custom_drop_down.dart';
import 'widgets/ninetytwo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export.dart';

// ignore_for_file: must_be_immutable
class InternshipsScreen extends StatelessWidget {
  InternshipsScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 35.v),
                  _buildArrowLeft(context),
                  SizedBox(
                      height: 671.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 39.h),
                                decoration: AppDecoration.gradientGrayToWhiteA,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgVector591x302,
                                    height: 246.v,
                                    width: 305.h))),
                        _buildNinetyTwo(context)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      CustomAppBar(
          leadingWidth: 47.h,
          leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowLeft,
              margin: EdgeInsets.only(left: 32.h, top: 4.v, bottom: 7.v),
              onTap: () {
                onTapArrowLeft(context);
              }),
          title: AppbarTitle(
              text: "Internship Programme",
              margin: EdgeInsets.only(left: 16.h)),
          actions: [
            AppbarTrailingImage(
                imagePath: ImageConstant.imgFilter,
                margin: EdgeInsets.fromLTRB(32.h, 1.v, 32.h, 3.v))
          ]),
      SizedBox(height: 20.v),
      Padding(
          padding: EdgeInsets.only(right: 28.h),
          child: CustomDropDown(
              width: 162.h, hintText: "Category", items: dropdownItemList)),
      SizedBox(height: 7.v),
      Padding(
          padding: EdgeInsets.only(right: 28.h),
          child: CustomDropDown(
              width: 162.h, hintText: "CSP Centre", items: dropdownItemList1))
    ]);
  }

  /// Section Widget
  Widget _buildNinetyTwo(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 1.v);
            },
            itemCount: 10,
            itemBuilder: (context, index) {
              return NinetytwoItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
