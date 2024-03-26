import 'package:asap/widgets3/app_bar/custom_app_bar.dart';
import 'package:asap/widgets3/app_bar/appbar_leading_image.dart';
import 'package:asap/widgets3/custom_text_form_field.dart';
import 'package:get/get.dart';
import '../register_screen/widgets/onlinepayment_item_widget.dart';
import 'widgets/sixtysix_item_widget.dart';
import 'package:asap/widgets3/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export2.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController promoCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA70001,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup175),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 15.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Text("AI-Machine Learning Developer",
                                      style: CustomTextStyles
                                          .titleMediumOnPrimary)),
                              SizedBox(height: 8.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgClock,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(left: 13.h),
                                        child: Text("Duration :",
                                            style:
                                                CustomTextStyles.bodyMedium14)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text("720 Hours",
                                            style: CustomTextStyles
                                                .titleSmallSemiBold14))
                                  ])),
                              SizedBox(height: 8.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgUpload,
                                        height: 16.v,
                                        width: 18.h),
                                    Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Text("Course Mode :",
                                            style:
                                                CustomTextStyles.bodyMedium14)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: Text("Offline",
                                            style: CustomTextStyles
                                                .titleSmallSemiBold14))
                                  ])),
                              SizedBox(height: 18.v),
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.h, vertical: 21.v),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Course Pricing",
                                            style: CustomTextStyles
                                                .titleMediumOnPrimary),
                                        SizedBox(height: 12.v),
                                        _buildMarketPrice(context),
                                        SizedBox(height: 21.v),
                                        Padding(
                                            padding: EdgeInsets.only(left: 4.h),
                                            child: Text("Promo Code / Coupon",
                                                style: CustomTextStyles
                                                    .titleMediumOnPrimary)),
                                        SizedBox(height: 11.v),
                                        _buildPromoCode(context),
                                        SizedBox(height: 29.v),
                                        _buildOnlinePayment(context),
                                        SizedBox(height: 24.v),
                                        Padding(
                                            padding: EdgeInsets.only(left: 4.h),
                                            child: Text("Choose Payment Method",
                                                style: CustomTextStyles
                                                    .titleMediumOnPrimary)),
                                        SizedBox(height: 4.v),
                                        _buildSixtySix(context),
                                        SizedBox(height: 39.v),
                                        _buildPayLater(context),
                                        SizedBox(height: 15.v)
                                      ]))
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 77.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgGroup115,
            margin: EdgeInsets.fromLTRB(30.h, 22.v, 345.h, 23.v),
            onTap: () {
              onTapImage(context);
            }));
  }

  /// Section Widget
  Widget _buildMarketPrice(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12.v),
        decoration: AppDecoration.outlineOnPrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, right: 99.h),
                  child: Row(children: [
                    Opacity(
                        opacity: 0.75,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: Text("Market Price",
                                style:
                                    CustomTextStyles.titleSmallOnPrimary14))),
                    Spacer(),
                    Text(":", style: CustomTextStyles.titleSmallSemiBold),
                    Container(
                        height: 18.v,
                        width: 60.h,
                        margin: EdgeInsets.only(left: 9.h),
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "₹ ",
                                        style: CustomTextStyles
                                            .bodyMediumff2b2a2a),
                                    TextSpan(
                                        text: "81,199",
                                        style:
                                            CustomTextStyles.titleSmallff2b2a2a)
                                  ]),
                                  textAlign: TextAlign.left)),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 8.v),
                                  child: SizedBox(
                                      width: 48.h,
                                      child: Divider(
                                          color: theme.colorScheme.onPrimary
                                              .withOpacity(1)))))
                        ]))
                  ]))),
          SizedBox(height: 11.v),
          Opacity(opacity: 0.2, child: Divider()),
          SizedBox(height: 7.v),
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 9.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                        opacity: 0.75,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 23.v),
                            child: Text("ASAP",
                                style:
                                    CustomTextStyles.titleSmallOnPrimary_1))),
                    Spacer(),
                    Padding(
                        padding: EdgeInsets.only(bottom: 23.v),
                        child: Text(":",
                            style: CustomTextStyles.titleSmallSemiBold)),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Column(children: [
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "₹",
                                    style: CustomTextStyles.titleSmallff2b2a2a),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "78,000 All Inclusive",
                                    style:
                                        CustomTextStyles.titleSmallfff26f22_1)
                              ]),
                              textAlign: TextAlign.left),
                          SizedBox(height: 4.v),
                          Text("₹ 77,139 + ₹861 GST",
                              style: theme.textTheme.bodyMedium)
                        ]))
                  ])),
          SizedBox(height: 9.v),
          Opacity(opacity: 0.2, child: Divider()),
          SizedBox(height: 13.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, right: 69.h),
                  child: Row(children: [
                    Opacity(
                        opacity: 0.75,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 3.v),
                            child: Text("You Save",
                                style:
                                    CustomTextStyles.titleSmallOnPrimary14))),
                    Spacer(),
                    Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text(":",
                            style: CustomTextStyles.titleSmallSemiBold)),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h, top: 3.v),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "₹ ",
                                  style: CustomTextStyles.bodyMediumff2b2a2a),
                              TextSpan(
                                  text: "4,060 (5%)",
                                  style: CustomTextStyles.titleSmallfff26f22)
                            ]),
                            textAlign: TextAlign.left))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildPromoCode(BuildContext context) {
    return SizedBox(
        height: 45.v,
        width: 329.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Opacity(
                  opacity: 0.5,
                  child: Padding(
                      padding: EdgeInsets.only(left: 18.h, bottom: 11.v),
                      child: Text("ENTER CODE",
                          style: CustomTextStyles.titleSmallOnPrimary)))),
          CustomTextFormField(
              width: 329.h,
              controller: promoCodeController,
              hintText: "Apply Coupon",
              textInputAction: TextInputAction.done,
              alignment: Alignment.center,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 14.h, vertical: 13.v))
        ]));
  }

  /// Section Widget
  Widget _buildOnlinePayment(BuildContext context) {
    return Wrap(
        runSpacing: 8.v,
        spacing: 8.h,
        children:
            List<Widget>.generate(3, (index) => OnlinepaymentItemWidget()));
  }

  /// Section Widget
  Widget _buildSixtySix(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 1.v);
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return SixtysixItemWidget();
        });
  }

  /// Section Widget
  Widget _buildPayLater(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomElevatedButton(
          isLoading: true.obs,
          width: 128.h,
          text: "Pay Later",
          buttonStyle: CustomButtonStyles.fillGray,
          buttonTextStyle: CustomTextStyles.titleMediumOnPrimary),
      CustomElevatedButton(
          isLoading: true.obs,
          width: 192.h,
          text: "Continue",
          buttonStyle: CustomButtonStyles.none,
          decoration: CustomButtonStyles.gradientPrimaryToCyanTL6Decoration,
          buttonTextStyle: CustomTextStyles.titleMediumWhiteA70001)
    ]);
  }

  /// Navigates back to the previous screen.
  onTapImage(BuildContext context) {
    Navigator.pop(context);
  }
}
