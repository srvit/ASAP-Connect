import 'package:asap_student_app/utils/colors.dart';
import 'package:asap_student_app/utils/text_styles.dart';
import 'package:asap_student_app/view/dashbord.dart';
import 'package:asap_student_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InterestedAreas extends StatefulWidget {
  const InterestedAreas({Key? key}) : super(key: key);

  @override
  _InterestedAreasState createState() => _InterestedAreasState();
}

class _InterestedAreasState extends State<InterestedAreas> {
  List<bool> _isSelectedList =
      List.generate(9, (index) => false); // Track the selected state of chips

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Hello!'),
              const Text(
                'Sidharth Kumar',
                style: CustomStyles.boldText16,
              ),
              const SizedBox(height: 16.0),
              const Text('Select your Interested Areas'),
              const SizedBox(height: 8.0),
              Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children: List.generate(9, (index) {
                  return ChoiceChip(
                    label: Text('Option ${index + 1}'),
                    selected: _isSelectedList[index],
                    selectedColor: AppColor.primaryColor,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                          color: Colors.transparent), // Remove black borders
                    ),
                    onSelected: (isSelected) {
                      setState(() {
                        _isSelectedList[index] = isSelected;
                      });
                    },
                  );
                }),
              ),
              const SizedBox(height: 16.0),
              CustomButton(
                width: 150,
                text: 'Next',
                clickOn: () {
                  Get.to(DashboardScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
