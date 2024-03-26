import 'package:asap/widgets2/app_bar/custom_app_bar.dart';
import 'package:asap/widgets2/app_bar/appbar_leading_image.dart';
import 'package:asap/widgets2/app_bar/appbar_title.dart';
import 'package:asap/widgets2/custom_elevated_button.dart';
import 'widgets/eightyeight_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 221.h,
                          margin: EdgeInsets.only(right: 169.h),
                          padding: EdgeInsets.symmetric(vertical: 45.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup23),
                                  fit: BoxFit.cover)),
                          child: _buildAppBar(context)),
                      SizedBox(
                          height: 531.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 39.h),
                                        decoration:
                                            AppDecoration.gradientGrayToWhiteA,
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgVector591x302,
                                            height: 246.v,
                                            width: 305.h))),
                                CustomElevatedButton(
                                    height: 50.v,
                                    width: 327.h,
                                    text: "Join Community",
                                    margin: EdgeInsets.only(bottom: 148.v),
                                    buttonStyle: CustomButtonStyles.none,
                                    decoration: CustomButtonStyles
                                        .gradientPrimaryToCyanDecoration,
                                    buttonTextStyle:
                                        theme.textTheme.titleLarge!,
                                    alignment: Alignment.bottomCenter),
                                _buildEightyEight(context)
                              ]))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 29.h, top: 4.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "My Communities ", margin: EdgeInsets.only(left: 16.h)));
  }

  /// Section Widget
  Widget _buildEightyEight(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: Padding(
            padding: EdgeInsets.only(left: 32.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 1.v);
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return EightyeightItemWidget();
                })));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
