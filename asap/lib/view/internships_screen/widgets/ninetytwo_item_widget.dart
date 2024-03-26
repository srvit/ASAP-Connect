import 'package:asap/widgets2/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export.dart';

// ignore: must_be_immutable
class NinetytwoItemWidget extends StatelessWidget {
  NinetytwoItemWidget({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 29.h,
          vertical: 78.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup23,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 1.h),
              padding: EdgeInsets.symmetric(vertical: 11.v),
              decoration: AppDecoration.outlineGray900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgShare,
                    height: 14.v,
                    width: 16.h,
                    margin: EdgeInsets.symmetric(vertical: 2.v),
                  ),
                  Opacity(
                    opacity: 0.45,
                    child: Text(
                      "Newest First",
                      style: CustomTextStyles.titleSmallGray900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
            CustomDropDown(
              hintText: "Pricing",
              items: dropdownItemList,
              onChanged: (value) {},
            ),
            SizedBox(height: 62.v),
          ],
        ),
      ),
    );
  }
}
