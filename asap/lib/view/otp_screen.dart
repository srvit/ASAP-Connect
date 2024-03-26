import 'dart:developer' as dev;
import 'package:asap/utils/decorations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:asap/utils/colors.dart';
import 'package:asap/utils/text_styles.dart';
import 'package:asap/view/login_screen.dart';

import 'package:asap/widgets/custom_button.dart';
import 'package:asap/view_model/login_controller.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.find<LoginController>();

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.sizeOf(context).height,
            decoration: CustomDecorations.scaffoldImageDecoration,
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Text(
                  'Enter OTP',
                  style: CustomStyles.muslishTitleText,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                Container(
                  width: 15,
                  height: 2,
                  color: AppColor.primaryColor,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text.rich(
                  TextSpan(
                    text: 'We have sent an OTP on\n',
                    style: CustomStyles.muslishText,
                    children: [
                      TextSpan(
                        text: "+91 ${loginController.phoneController.text}",
                        style: CustomStyles.otpPhoneHintText,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                GestureDetector(
                  onTap: () => Get.to(const LoginScreen()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Change Mobile Number',
                        style: CustomStyles.changeMobileText,
                      ),
                      const SizedBox(width: 5),
                      SvgPicture.asset(
                        'assets/svg/change_phone_icon.svg',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.011),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.025),
                      child: OtpPinField(
                        autoFillEnable: true,
                        textInputAction: TextInputAction.done,
                        maxLength: 4,
                        fieldWidth: 40,
                        otpPinFieldStyle: OtpPinFieldStyle(
                          fieldBorderWidth: 0.5,
                          fieldPadding: 25,
                          textStyle: CustomStyles.muslishNormalBoldText,
                          defaultFieldBorderColor: AppColor.otpFieldColor,
                          activeFieldBorderColor: AppColor.otpFieldColor,
                        ),
                        onSubmit: (text) {
                          loginController.otpController.text = text;
                          loginController.validateOTP();
                        },
                        onChange: (text) {
                          loginController.otpController.text = text;
                        },
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    CustomButton(
                      isLoading: loginController.showLoading,
                      // clickOn: () => Get.to(const RegistrationScreen()),
                      clickOn: () => loginController.validateOTP(),
                      text: 'Submit',
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    RichText(
                      text: TextSpan(
                        text: "Don't receive OTP? ",
                        style: GoogleFonts.mulish(
                          textStyle: const TextStyle(
                            color: AppColor.secondaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        children: [
                          TextSpan(
                            text: ' Resend',
                            style: GoogleFonts.mulish(
                              textStyle: const TextStyle(
                                color: AppColor.secondaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                loginController.otpController.clear();
                                dev.log(
                                    "${loginController.otpController.text}text is empty now");
                                loginController.clearOTP();
                                loginController.loginWithPhone();

                                dev.log('Resend tapped');
                              },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
