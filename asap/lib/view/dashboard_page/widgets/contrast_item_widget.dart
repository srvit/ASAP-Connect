import 'package:asap/core/app_export.dart';
import 'package:asap/widgets2/custom_image_view.dart';
import 'package:asap/widgets3/network_image.dart';
import 'package:flutter/material.dart';

class ContrastItemWidget extends StatelessWidget {
  final String name;
  final String duration;
  final String unit;
  final String mode;
  final String imageUrl;

  const ContrastItemWidget({
    Key? key,
    required this.name,
    required this.duration,
    required this.unit,
    required this.mode,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155,
      width: 346,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          // CustomImageView(
          //   imagePath: ImageConstant.imgImage60120x263,
          //   height: 120,
          //   width: 263,
          //   radius: BorderRadius.circular(15),
          //   alignment: Alignment.centerRight,
          // ),
          // CustomImageView(
          //   imagePath: ImageConstant.imgImage60140x303,
          //   height: 140,
          //   width: 303,
          //   radius: BorderRadius.circular(15),
          //   alignment: Alignment.centerRight,
          //   margin: const EdgeInsets.only(right: 11),
          // ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 155,
              width: 323,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView2(
                    fit: BoxFit.cover,
                    imagePath: imageUrl,
                    height: 155,
                    width: 323,
                    radius: BorderRadius.circular(18),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 57,
                      width: 323,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              margin: const EdgeInsets.only(
                                left: 15,
                                right: 12,
                                bottom: 19,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 7,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 14,
                                    width: 14,
                                    margin: const EdgeInsets.only(
                                      left: 4,
                                      bottom: 8,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgContrastGray900,
                                          height: 14,
                                          width: 14,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: 8,
                                            width: 8,
                                            decoration: BoxDecoration(
                                              color: Colors.orange,
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5,
                                      bottom: 6,
                                    ),
                                    child: Text(
                                      mode == "0"
                                          ? "Offline"
                                          : mode == "1"
                                              ? "Online"
                                              : "Hybrid",
                                      style: CustomTextStyles.labelLarge12,
                                    ),
                                  ),
                                  const Spacer(),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgClockBg,
                                    height: 14,
                                    width: 14,
                                    margin: const EdgeInsets.only(bottom: 8),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 3,
                                      bottom: 5,
                                    ),
                                    child: Text(
                                      '$duration ${unit == "1" ? "Hours" : unit == "2" ? "Days" : "Months"}',
                                      style: CustomTextStyles.labelLarge12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              height: 30.h,
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                              ),
                              decoration: const BoxDecoration(
                                color: Color(0XFF5C757C),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(18),
                                  bottomRight: Radius.circular(18),
                                ),
                              ),
                              child: Text(
                                name,
                                style: CustomTextStyles.titleSmallWhiteA70001,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
