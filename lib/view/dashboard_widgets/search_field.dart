import 'package:asap_student_app/utils/colors.dart';
import 'package:asap_student_app/utils/custom_borders.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        onChanged: (value) {},
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColor.backgroundColor,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          border: CustomBorders.searchOutlineInputBorder,
          focusedBorder: CustomBorders.searchOutlineInputBorder,
          enabledBorder: CustomBorders.searchOutlineInputBorder,
          hintText: "Search Courses",
          suffixIcon: const Icon(
            Icons.search,
            color: AppColor.primaryColor,
          ),
        ),
      ),
    );
  }
}
