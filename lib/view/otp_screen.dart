import 'package:asap_student_app/view/login_screen.dart';
import 'package:asap_student_app/view/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:asap_student_app/utils/colors.dart';
import 'package:asap_student_app/utils/text_styles.dart';
import 'package:asap_student_app/widgets/custom_button.dart';
import 'package:get/get.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String _contact = "11111";

  late String _smsOTP = "";

  final _otpPinFieldKey = GlobalKey<OtpPinFieldState>();

  @override
  Widget build(BuildContext context) {
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
                const Text(
                  'Enter OTP',
                  style: CustomStyles.boldText16,
                ),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                Container(
                  width: 15,
                  height: 2,
                  color: AppColor.primaryColor,
                ),
                SizedBox(height: screenHeight * 0.02),
                Text.rich(
                  TextSpan(
                    text: 'We have sent an OTP on\n',
                    style: CustomStyles.normalText14,
                    children: [
                      TextSpan(
                        text: _contact,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                GestureDetector(
                  onTap: () => Get.to(const LoginScreen()),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Change Mobile Number',
                        style: TextStyle(color: AppColor.primaryColor),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.edit, size: 12),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.011,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: screenWidth * 0.025),
                      child: OtpPinField(
                        key: _otpPinFieldKey,
                        textInputAction: TextInputAction.done,
                        maxLength: 4,
                        fieldWidth: 40,
                        otpPinFieldStyle: const OtpPinFieldStyle(
                          defaultFieldBorderColor: AppColor.primaryColor,
                          activeFieldBorderColor: AppColor.primaryColor,
                        ),
                        onSubmit: (text) {
                          setState(() {
                            _smsOTP = text;
                          });
                        },
                        onChange: (text) {},
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.04),
                    GestureDetector(
                      onTap: () {
                        // Handle verification here
                      },
                      child: CustomButton(
                        clickOn: () => Get.to(const RegistrationScreen()),
                        text: 'Submit',
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    RichText(
                      text: const TextSpan(
                        text: "Don't recieve OTP? ",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: ' Resend',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
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
