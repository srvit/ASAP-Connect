import 'package:asap/view_model/search_controller.dart';
import 'package:asap/view_model/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/app_export2.dart';

class CustomSearchView extends StatelessWidget {
  const CustomSearchView({
    Key? key,
    this.alignment,
    this.width,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  final Alignment? alignment;
  final double? width;
  final TextEditingController? scrollPadding;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? autofocus;
  final TextStyle? textStyle;
  final TextInputType? textInputType;
  final int? maxLines;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool? filled;
  final FormFieldValidator<String>? validator;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: searchViewWidget(context),
          )
        : searchViewWidget(context);
  }

  Widget searchViewWidget(BuildContext context) => SizedBox(
        height: 37,
        width: width ?? double.maxFinite,
        child: TextFormField(
          scrollPadding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          controller: controller,
          style: textStyle ?? CustomTextStyles.titleMediumOnPrimary,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
          // onChanged: (String value) {
          //   onChanged?.call(value);
          // },
          onChanged: (String value) {
            // Call performAction function each time the text changes
            performAction();
          },
          onFieldSubmitted: (value) {
            performAction();
          },
        ),
      );

  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.titleMediumOnPrimary,
        prefixIconConstraints: prefixConstraints ??
            BoxConstraints(
              maxHeight: 48.v,
            ),
        suffixIcon: GestureDetector(
          onTap: () {
            performAction();
          },
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: suffix ??
                Container(
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSeachBlack,
                  ),
                ),
          ),
        ),
        suffixIconConstraints: suffixConstraints ??
            BoxConstraints(
              maxHeight: 48.v,
            ),
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.only(
              left: 12.h,
              top: 14.v,
              bottom: 14.v,
            ),
        fillColor: fillColor ?? appTheme.whiteA70001.withOpacity(0.34),
        filled: filled!,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(11.h),
              borderSide: BorderSide.none,
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(11.h),
              borderSide: BorderSide.none,
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(11.h),
              borderSide: BorderSide.none,
            ),
      );

  void performAction() {
    String enteredText = controller?.text ?? "";

    onChanged?.call(enteredText);
    Get.find<UserController>().setText(enteredText);
    Get.find<QueryController>().fetchSearchResults(enteredText);
  }
}
