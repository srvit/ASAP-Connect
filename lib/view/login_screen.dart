import 'package:asap_student_app/utils/colors.dart';
import 'package:asap_student_app/utils/text_styles.dart';
import 'package:asap_student_app/view_model/login_controller.dart';
import 'package:asap_student_app/widgets/custom_button.dart';
import 'package:asap_student_app/widgets/snackbar_messenger.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: screenHeight * 0.05),
                SizedBox(height: screenHeight * 0.02),
                const Text(
                  'Get Started',
                  style: CustomStyles.boldText16,
                ),
                SizedBox(height: screenHeight * 0.005),
                Container(
                  width: 15,
                  height: 2,
                  color: AppColor.primaryColor,
                ),
                SizedBox(height: screenHeight * 0.02),
                const Text(
                  'Enter your mobile number\nto get login OTP',
                  textAlign: TextAlign.center,
                  style: CustomStyles.normalText14,
                ),
                SizedBox(height: screenHeight * 0.04),
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: SizedBox(
                    width: screenWidth * 0.7,
                    child: Row(
                      children: [
                        // SVG Icon
                        SvgPicture.asset(
                          'assets/svg/phone_icon.svg',
                        ),

                        // Country Code Picker
                        const CountryCodePicker(
                          onChanged: print,
                          initialSelection: 'IN',
                          favorite: ['+91', 'IN'],
                          showCountryOnly: false,
                          showOnlyCountryWhenClosed: false,
                          alignLeft: false,
                          showFlag: false,
                        ),

                        GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.keyboard_arrow_down_rounded,
                              size: 15, color: Colors.black),
                        ),

                        const SizedBox(width: 25),

                        // Text Field
                        Expanded(
                          child: TextField(
                            controller: loginController.phoneController,
                            decoration: const InputDecoration(
                              hintText: 'XXXX XX00 78',
                              hintStyle: TextStyle(
                                color: AppColor.textSecondary,
                              ),
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(10)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                CustomButton(
                  text: 'Send',
                  clickOn: () {
                    final String? validationMessage =
                        loginController.validatePhoneNumber(
                            loginController.phoneController.text.trim());
                    if (validationMessage == null) {
                      loginController.loginWithPhone();
                    } else {
                      // Show validation error
                      Get.showSnackbar(getxSnackbar(
                          message: validationMessage, isError: true));
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
