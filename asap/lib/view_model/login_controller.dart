import 'dart:developer' as dev;
import 'package:asap/model/existing_user.dart';
import 'package:asap/repositories/auth_repo.dart';
import 'package:asap/services/shared_pref.dart';
import 'package:asap/view/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:asap/view/otp_screen.dart';
import 'package:asap/view/registration_screen.dart';
import 'package:asap/view_model/user_controller.dart';
import 'package:asap/widgets/snackbar_messenger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  final showLoading = false.obs;
  final isNewUser = false.obs;
  final loginKey = GlobalKey<FormState>();
  String? accessToken;
  String? refreshToken;
  String? userID;
  String? name;

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
      showLoading.value = false;
    }, (response) async {
      if (response['status'] == 'OK') {
        Get.showSnackbar(
          getxSnackbar(message: response['message'], isError: false),
        );
        showLoading.value = false;
        Get.to(() => const OtpScreen());
      } else {
        Get.showSnackbar(
          getxSnackbar(message: response['message'], isError: true),
        );
        showLoading.value = false;
      }
    });
  }

  clearOTP() {
    otpController.clear();
    dev.log(otpController.text);
  }

  validateOTP() async {
    showLoading.value = true;
    Map<String, dynamic> inputData = {
      'mobile': phoneController.text.trim(),
      'otp': otpController.text.trim(),
    };
    dev.log(inputData.toString());
    final either = await AuthRepo().verifyOTP(inputData);
    either.fold((error) {
      Get.showSnackbar(getxSnackbar(message: error.message, isError: true));
      showLoading.value = false;
    }, (response) async {
      if (response['status'] == 'OK') {
        dev.log("status code is 200");

        if (response['result'] == 0) {
          dev.log("new user");
          isNewUser.value = true;
          update();
          await SharedPref.instence.setIsNewUser(isNewUser.value);

          otpController.clear();
          Get.offAll(() => const RegistrationScreen());

          showLoading.value = false;
        } else {
          dev.log("registered user");
          accessToken = response['accessToken'];
          refreshToken = response['refreshToken'];
          userID = response['data']['_id'];
          name = response['data']['firstname'] ??
              '' + response['data']['lastname'] ??
              '';
          ExistingUserModel user = ExistingUserModel.fromJson(response['data']);
          dev.log("ExistingUserModel");
          UserController userController = Get.find();
          userController.setExistingUser(user);

          await SharedPref.instence.setAccessToken(accessToken!);
          dev.log("accessToken stored");
          await SharedPref.instence.setRefreshToken(refreshToken!);
          dev.log("refreshToken stored");
          await SharedPref.instence.setIsNewUser(false);
          dev.log("registered user");
          await SharedPref.instence.setUserId(userID ?? '');
          dev.log("userId stored");
          await SharedPref.instence.setName(name ?? '');
          dev.log("name stored");

          showLoading.value = false;

          otpController.clear();
          Get.offAll(() => const DashboardContainerScreen());
          // Get.offAll(() => InterestedAreasScreen());
        }
      } else {
        Get.showSnackbar(
          getxSnackbar(message: response['message'], isError: true),
        );
        showLoading.value = false;
      }
    });
    if (accessToken != null) {}
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
    // phoneController.dispose();
    otpController.dispose();
    super.onClose();
  }
}
