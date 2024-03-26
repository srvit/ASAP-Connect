import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX
import '../core/app_export2.dart';
import 'base_button.dart';

class CustomElevatedButton extends BaseButton {
  CustomElevatedButton({
    Key? key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    EdgeInsets? margin,
    VoidCallback? onPressed,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    required this.isLoading, // RxBool isLoading
    double? height,
    double? width,
    required String text,
  }) : super(
          key: key,
          text: text,
          onPressed: onPressed,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled,
          buttonTextStyle: buttonTextStyle,
          height: height,
          width: width,
          alignment: alignment,
          margin: margin,
        );

  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final RxBool isLoading; // RxBool isLoading

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildElevatedButtonWidget(),
          )
        : buildElevatedButtonWidget();
  }

  Widget buildElevatedButtonWidget() => Container(
        height: this.height ?? 48.v,
        width: this.width ?? double.maxFinite,
        margin: margin,
        decoration:
            decoration ?? CustomButtonStyles.gradientPrimaryToCyanTL6Decoration,
        child: InkWell(
          onTap:
              isDisabled ?? false ? null : onPressed, // Use onPressed directly
          child: ElevatedButton(
            style: buttonStyle,
            onPressed:
                null, // Set to null as the onPressed action is handled by InkWell
            child: Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    leftIcon ?? const SizedBox.shrink(),
                    isLoading.value // Check if isLoading is true
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          ) // Show CircularProgressIndicator if true
                        : Text(
                            text,
                            style:
                                buttonTextStyle ?? theme.textTheme.titleLarge,
                          ),
                    rightIcon ?? const SizedBox.shrink(),
                  ],
                )),
          ),
        ),
      );
}
