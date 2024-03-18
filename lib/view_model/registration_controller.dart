import 'package:asap_student_app/repositories/auth_repo.dart';
import 'package:asap_student_app/services/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import '../widgets/snackbar_messenger.dart';

class RegistrationController extends GetxController {
  final GlobalKey<FormState> registrationFormKey = GlobalKey<FormState>();
  late final TextEditingController fullNameController;

  late final TextEditingController emailController;
  late final TextEditingController districtController;
  late final TextEditingController mobileController;
  final showLoading = false.obs;
  bool passwordCompleted = false;

  @override
  void onInit() {
    super.onInit();
    fullNameController = TextEditingController();
    emailController = TextEditingController();
    mobileController = TextEditingController();
    districtController = TextEditingController();
  }

  validateAdmin() async {
    if (registrationFormKey.currentState!.validate()) {
      final studentData = {
        'firstName': fullNameController.text.trim(),
        'email': emailController.text.trim(),
        'mobileNumber': mobileController.text.trim(),
        'district': districtController.text.trim(),
      };
      showLoading.value = true;
      final either = await AuthRepo().registerASAP(studentData);
      either.fold((error) {
        Get.showSnackbar(getxSnackbar(message: error.message, isError: true));
      }, (response) async {
        if (response['status'] == 200) {
          final token = response['token'];
          await SharedPref.instence.setToken(token);
        } else {
          showLoading.value = F;
          Get.showSnackbar(
              getxSnackbar(message: response['message'], isError: T));
        }
      });
    }
  }

  String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'Field is required';
    } else if (!GetUtils.isEmail(value)) {
      return 'Please Enter a Valid Email';
    }
    return null;
  }

  String? validatefullName(String value) {
    if (value.isEmpty) {
      return 'Field is required';
    }
    return null;
  }

  String? validateDistrict(String value) {
    if (value.isEmpty) {
      return 'Field is required';
    }
    return null;
  }

  String? validateNumber(String value) {
    final RegExp mobileNumber = RegExp(r'^[0-9]{10}$');
    if (!mobileNumber.hasMatch(value)) {
      return 'Invalid mobile number';
    }
    return null;
  }

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();

    emailController.dispose();
    mobileController.dispose();
    districtController.dispose();
  }
}
