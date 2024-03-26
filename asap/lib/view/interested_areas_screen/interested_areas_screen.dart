import 'package:asap/services/shared_pref.dart';
import 'package:asap/utils/colors.dart';
import 'package:asap/utils/decorations.dart';
import 'package:asap/view/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:asap/view_model/interested_areas_controller.dart';
import 'package:asap/widgets/snackbar_messenger.dart';
import 'package:asap/widgets3/custom_elevated_button.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export2.dart';

class InterestedAreasScreen extends StatelessWidget {
  const InterestedAreasScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    InterestedAreasController controller = Get.find();
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: CustomDecorations
                .registrationImageDecoration, // Background Image
            width: double.maxFinite,
          ),
          Container(
            // decoration: BoxDecoration(
            //   color: Colors.white.withOpacity(0.7), // White color with opacity
            // ),
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 29.h, top: 64.v, right: 212.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello!",
                          style: CustomTextStyles.titleMediumGray800,
                        ),
                        SizedBox(height: 3.v),
                        GetBuilder<InterestedAreasController>(
                          init: InterestedAreasController(),
                          builder: (controller) => Text(
                            controller.fullName,
                            style: CustomTextStyles.titleLargeGray800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 29.h, top: 32.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select your Interested Areas",
                          style: CustomTextStyles.titleMediumGray800,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4.0),
                          height: 0.5,
                          width: 54.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  buildChips(context),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 29.h, bottom: 98.v, top: 30.h),
                    child: CustomElevatedButton(
                      isLoading: controller.showLoading,
                      onPressed: () => {
                        if (controller.updatedInterestedAreas.isNotEmpty)
                          {controller.updateInterestedAreas()}
                        else
                          {
                            Get.showSnackbar(getxSnackbar(
                                message: "Select atleast one interested area",
                                isError: true))
                          }
                      },
                      // Get.to(DashboardContainerScreen()),
                      height: 50.v,
                      width: 150.h,
                      text: "Next",
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientPrimaryToCyanDecoration,
                      alignment: Alignment.bottomLeft,
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

Widget buildChips(BuildContext context) {
  return GetBuilder<InterestedAreasController>(
    init: InterestedAreasController(),
    builder: (controller) => SizedBox(
      width: double.maxFinite,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildChips(controller),
          ],
        ),
      ),
    ),
  );
}

Widget _buildChips(InterestedAreasController controller) {
  if (controller.interestedAreas.isEmpty) {
    return const Center(
      child: SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColor.orangeColor),
        ),
      ),
    );
  }

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 29),
    child: Wrap(
      spacing: 10.0,
      children: List.generate(
        controller.interestedAreas.length,
        (index) => GestureDetector(
          onTap: () {
            controller.setSelectedChip(index);
          },
          child: Chip(
            label: Text(
              controller.interestedAreas[index].name,
              style: TextStyle(
                color: controller.selectedChipIndices.contains(index)
                    ? Colors.white
                    : const Color(0xFF003D43),
              ),
            ),
            backgroundColor: controller.selectedChipIndices.contains(index)
                ? const Color(0xFFF26F22)
                : Colors.white,
            elevation: controller.selectedChipIndices.contains(index) ? 0 : 2,
            shadowColor: controller.selectedChipIndices.contains(index)
                ? null
                : Colors.black.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: const BorderSide(color: Colors.transparent),
            ),
          ),
        ),
      ),
    ),
  );
}
