import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export.dart';
import 'package:asap/widgets2/custom_outlined_button.dart';
import 'package:asap/widgets3/network_image.dart';

// ignore: must_be_immutable
class RegisterItemWidget extends StatelessWidget {
  final String titleText;
  final String secondText;
  final String imageUrl;

  const RegisterItemWidget({
    Key? key,
    required this.titleText,
    required this.secondText,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomImageView2(
          imagePath: imageUrl,
          width: double.infinity,
          radius: BorderRadius.circular(20.h),
          margin: EdgeInsets.only(right: 15.h),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(right: 15.h),
            height: 80.h,
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
            decoration: const BoxDecoration(
              color: Color(0XFFFFFFFF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titleText,
                    style: theme.textTheme.titleMedium!.copyWith(
                      color: Colors.black,
                    )),
                Text(
                  secondText,
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: const Color(0XF02B2A2A).withOpacity(.5),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                      child: SizedBox(),
                    ),
                    CustomOutlinedButton(
                      text: "Register",
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientBlueToLightBlueDecoration,
                    ),
                    SizedBox(
                      width: 15.h,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
