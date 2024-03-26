import 'package:asap/utils/colors.dart';
import 'package:asap/utils/decorations.dart';
import 'package:asap/view_model/registration_controller.dart';
import 'package:asap/widgets/custom_button.dart';
import 'package:asap/widgets/snackbar_messenger.dart';
import 'package:asap/widgets/text_column.dart';
import 'package:asap/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final RegistrationController _registrationController =
      Get.put(RegistrationController());

  late FocusNode _fullNameFocusNode;
  late FocusNode _phoneFocusNode;
  late FocusNode _emailFocusNode;
  late FocusNode _districtFocusNode;
  late FocusNode _checkboxFocusNode;

  @override
  void initState() {
    super.initState();
    _fullNameFocusNode = FocusNode();
    _phoneFocusNode = FocusNode();
    _emailFocusNode = FocusNode();
    _districtFocusNode = FocusNode();
    _checkboxFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _fullNameFocusNode.dispose();
    _phoneFocusNode.dispose();
    _emailFocusNode.dispose();
    _districtFocusNode.dispose();
    _checkboxFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: CustomDecorations.registrationImageDecoration,
          child: Column(
            children: [
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
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColor.lightCyan,
                ),
                child: SingleChildScrollView(
                  child: Form(
                    key: _registrationController.registrationFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30),
                        CustomFormField(
                          isName: true,
                          controller:
                              _registrationController.fullNameController,
                          hintText: "Full Name",
                          svgIcon: "assets/svg/fullname_icon.svg",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Name is empty";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.name,
                          focusNode: _fullNameFocusNode,
                          nextFocusNode: _phoneFocusNode,
                        ),
                        const SizedBox(height: 30),
                        CustomFormField(
                          controller: _registrationController.mobileController,
                          hintText: "Phone",
                          svgIcon: "assets/svg/phone_icon.svg",
                          validator: (value) {
                            final RegExp mobileNumber = RegExp(r'^[0-9]{10}$');
                            if (value == null || value.isEmpty) {
                              return "Phone Number is empty";
                            } else if (value.length != 10) {
                              return 'Phone number is invalid';
                            } else if (!mobileNumber.hasMatch(value)) {
                              return "Invalid mobile number";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.phone,
                          maxLengthEnabled: true,
                          focusNode: _phoneFocusNode,
                          nextFocusNode: _emailFocusNode,
                        ),
                        const SizedBox(height: 30),
                        CustomFormField(
                          controller: _registrationController.emailController,
                          hintText: "Email",
                          svgIcon: "assets/svg/email.svg",
                          validator: (value) {
                            String pattern =
                                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
                            RegExp regExp = RegExp(pattern);
                            if (value == null || value.isEmpty) {
                              return "Email is empty";
                            } else if (!regExp.hasMatch(value)) {
                              return "Enter valid email";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          focusNode: _emailFocusNode,
                          nextFocusNode: _districtFocusNode,
                        ),
                        const SizedBox(height: 30),
                        CustomFormField(
                          focusNode: _districtFocusNode,
                          nextFocusNode: _checkboxFocusNode,
                          controller:
                              _registrationController.districtController,
                          hintText: "District",
                          svgIcon: "assets/svg/district_icon.svg",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "District is empty";
                            } else {
                              return null;
                            }
                          },
                          readOnly: true,
                          keyboardType: TextInputType.name,
                          onTap: () {
                            _registrationController.showDistrictPicker(context);
                          },
                        ),
                        Obx(() => Row(
                              children: [
                                Checkbox(
                                  activeColor: AppColor.secondaryColor,
                                  value:
                                      _registrationController.isChecked.value,
                                  onChanged: (value) {
                                    _registrationController
                                        .toggleCheckbox(value!);
                                    if (value) {
                                      FocusScope.of(context)
                                          .requestFocus(_checkboxFocusNode);
                                    }
                                  },
                                ),
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    TextColumn(
                                      firstText: "I have read & agree to the",
                                      secondText: "Terms of services",
                                      press: () async {
                                        setState(() async {
                                          // _registrationController
                                          //     .showLoading.value = true;
                                          // await Future.delayed(
                                          //     Duration(seconds: 1));
                                          // _registrationController
                                          //     .showLoading.value = false;

                                          final url = Uri.parse(
                                              "https://asap.srvinfotech.com/privacy-policy");
                                          launchUrl(url,
                                              mode: LaunchMode
                                                  .externalApplication);
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            )),
                        const SizedBox(height: 30),
                        CustomButton(
                          isLoading: _registrationController.showLoading,
                          text: "Register",
                          clickOn: () {
                            if (!_registrationController.isChecked.value &&
                                _registrationController
                                    .registrationFormKey.currentState!
                                    .validate()) {
                              Get.showSnackbar(
                                getxSnackbar(
                                    message:
                                        "Please read and agree to the Terms of services",
                                    isError: true),
                              );
                            } else if (_registrationController
                                    .isChecked.value &&
                                _registrationController
                                    .registrationFormKey.currentState!
                                    .validate()) {
                              _registrationController.validateRegistration();
                            } else {}
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
      ),
    );
  }
}
