import 'package:asap/widgets2/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export.dart';

class CustomTelevisionWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Widget prefixIcon;

  const CustomTelevisionWidget({
    super.key,
    required this.onTap,
    required this.text,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: onTap,
              child: Container(
                padding: EdgeInsets.all(7.h),
                decoration: AppDecoration.outlineGrayD.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    prefixIcon,
                    Padding(
                      padding:
                          EdgeInsets.only(left: 15.h, top: 4.v, bottom: 4.v),
                      child: Text(
                        text,
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
            ),
            SizedBox(height: 16.v),
          ],
        ),
      ),
    );
  }
}
