import 'package:asap_student_app/utils/colors.dart';
import 'package:asap_student_app/view/interested_areas.dart';
import 'package:asap_student_app/widgets/custom_button.dart';
import 'package:asap_student_app/widgets/text_form_field.dart';
import 'package:asap_student_app/widgets/text_column.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _districtController = TextEditingController();
  final _signFormkey = GlobalKey<FormState>();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // First Child: SVG Icon
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SvgPicture.asset(
                "assets/svg/splash_img.svg",
                height: 100,
                width: 100,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Second Child: Container with Form
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColor.lightCyan,
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _signFormkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 30),
                      CustomFormField(
                        controller: _emailController,
                        hintText: "Full Name",
                        svgIcon: "assets/icons/fullname_icon.svg",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Name is empty";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.name,
                      ),
                      const SizedBox(height: 30),
                      CustomFormField(
                        controller: _passwordController,
                        hintText: "Phone",
                        svgIcon: "assets/icons/phone_icon.svg",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Phone Number is empty";
                          } else if (value.length <= 7) {
                            return "Password must contain at least 8 characters";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.phone,
                        maxLengthEnabled: true,
                      ),
                      const SizedBox(height: 30),
                      CustomFormField(
                        controller: _confirmPasswordController,
                        hintText: "Email",
                        svgIcon: "assets/icons/email.svg",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Email is empty";
                          } else if (!EmailValidator.validate(value)) {
                            return "Enter valid email";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 30),
                      CustomFormField(
                        controller: _districtController,
                        hintText: "District",
                        svgIcon: "assets/icons/district_icon.svg",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "District is empty";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.name,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                          ),
                          TextColumn(
                            firstText: "I have read & agree to the",
                            secondText: "Terms of services",
                            press: () {
                              // Navigate to the login screen
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      CustomButton(
                        text: "Register",
                        clickOn: () {
                          if (_signFormkey.currentState!.validate()) {
                            // Implement sign up logic here
                          }
                          Get.to(const InterestedAreas());
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
