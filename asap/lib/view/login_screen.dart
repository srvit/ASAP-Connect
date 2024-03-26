import 'package:asap/utils/colors.dart';
import 'package:asap/utils/decorations.dart';
import 'package:asap/utils/text_styles.dart';
import 'package:asap/view_model/login_controller.dart';
import 'package:asap/widgets/custom_button.dart';
import 'package:asap/widgets/snackbar_messenger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.find();
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          Scrollable.ensureVisible(context,
              duration: const Duration(milliseconds: 200), alignment: 0.5);
        },
        child: SingleChildScrollView(
          reverse: true,
          child: Container(
            height: screenHeight,
            decoration: CustomDecorations.scaffoldImageDecoration,
            child: Center(
              child: SingleChildScrollView(
                reverse: true,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: screenHeight * 0.05),
                      SizedBox(height: screenHeight * 0.02),
                      Text(
                        'Get Started',
                        style: CustomStyles.muslishTitleText,
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      Container(
                        width: 15,
                        height: 2,
                        color: AppColor.primaryColor,
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Text(
                        'Enter your mobile number\nto get login OTP',
                        textAlign: TextAlign.center,
                        style: CustomStyles.muslishText,
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
                                'assets/svg/phone_icon_bbg.svg',
                              ),

                              const SizedBox(width: 10),

                              // Country Code Text
                              Text(
                                '+91',
                                style: CustomStyles.phoneHintText,
                              ),

                              // Arrow Down Icon
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: 16,
                                    color: Colors.black),
                              ),

                              const SizedBox(width: 25),

                              // Text Field
                              Expanded(
                                child: TextField(
                                  controller: loginController.phoneController,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Phone',
                                    hintStyle: CustomStyles.phoneHintText,
                                    border: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(10)
                                  ],
                                  style: CustomStyles.phoneHintText,
                                  onSubmitted: (_) {
                                    // Close the keyboard
                                    FocusScope.of(context).unfocus();

                                    final String? validationMessage =
                                        loginController.validatePhoneNumber(
                                            loginController.phoneController.text
                                                .trim());

                                    if (validationMessage == null) {
                                      loginController.loginWithPhone();
                                      // Get.to(RegistrationScreen());
                                    } else {
                                      // Show validation error
                                      Get.showSnackbar(getxSnackbar(
                                          message: validationMessage,
                                          isError: true));
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      CustomButton(
                        isLoading: loginController.showLoading,
                        text: 'Send',
                        clickOn: () {
                          final String? validationMessage =
                              loginController.validatePhoneNumber(
                                  loginController.phoneController.text.trim());
                          if (validationMessage == null) {
                            loginController.loginWithPhone();
                            // Get.to(RegistrationScreen());
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
          ),
        ),
      ),
    );
  }
}
