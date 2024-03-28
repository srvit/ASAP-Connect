import 'dart:developer' as dev;
import 'package:asap_student_app/repositories/auth_repo.dart';
import 'package:asap_student_app/services/shared_pref.dart';
import 'package:asap_student_app/view/otp_screen.dart';
import 'package:asap_student_app/widgets/snackbar_messenger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  final showLoading = false.obs;
  final loginKey = GlobalKey<FormState>();
  String? token;

  loginWithPhone() async {
    dev.log(phoneController.text);

    showLoading.value = true;
    Map<String, dynamic> inputData = {
      'mobile': phoneController.text.trim(),
    };
    dev.log(inputData.toString());
    final either = await AuthRepo().loginASAP(inputData);
    either.fold((error) {
      Get.showSnackbar(getxSnackbar(message: error.message, isError: true));
    }, (response) async {
      if (response['status'] == 'OK') {
        Get.showSnackbar(
          getxSnackbar(message: response['message'], isError: false),
        );
        showLoading.value = false;
        Get.to(const OtpScreen());
      } else {
        Get.showSnackbar(
          getxSnackbar(message: response['message'], isError: true),
        );
        showLoading.value = false;
      }
    });
    if (token != null) {}
  }

  validateLogin() async {
    if (loginKey.currentState!.validate()) {
      showLoading.value = true;
      Map<String, dynamic> inputData = {
        'mobile': phoneController.text.trim(),
      };
      final either = await AuthRepo().loginASAP(inputData);
      either.fold((error) {
        Get.showSnackbar(getxSnackbar(message: error.message, isError: true));
      }, (response) async {
        // if (response['status'] == 'success') {
        token = response['accessToken'];

        await SharedPref.instence.setToken(token!);
      }
          //   else {
          //     Get.showSnackbar(
          //       getxSnackbar(message: response['message'], isError: true),
          //     );
          //     showLoading.value = false;
          //   }
          // }
          );
      if (token != null) {}
    }
  }

  validateOTP() async {
    if (loginKey.currentState!.validate()) {
      showLoading.value = true;
      Map<String, dynamic> inputData = {
        'otp': otpController.text.trim(),
      };
      final either = await AuthRepo().verifyOTP(inputData);
      either.fold((error) {
        Get.showSnackbar(getxSnackbar(message: error.message, isError: true));
      }, (response) async {
        // if (response['status'] == 'success') {
        token = response['accessToken'];

        await SharedPref.instence.setToken(token!);
      }
          //   else {
          //     Get.showSnackbar(
          //       getxSnackbar(message: response['message'], isError: true),
          //     );
          //     showLoading.value = false;
          //   }
          // }
          );
      if (token != null) {}
    }
  }

  String? validatePhoneNumber(String value) {
    final RegExp phoneRegex = RegExp(r'^[0-9]{10}$');

    if (!phoneRegex.hasMatch(value)) {
      return 'Enter a valid phone number';
    }
    return null;
  }

  @override
  void onClose() {
    phoneController.dispose();
    otpController.dispose();
    super.onClose();
  }
}
