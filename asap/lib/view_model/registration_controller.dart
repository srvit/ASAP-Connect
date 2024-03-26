import 'dart:developer' as dev;
import 'package:asap/model/location_model.dart';
import 'package:asap/model/newuserdata.dart';
import 'package:asap/repositories/auth_repo.dart';
import 'package:asap/services/shared_pref.dart';
import 'package:asap/utils/colors.dart';
import 'package:asap/utils/text_styles.dart';
import 'package:asap/view/interested_areas_screen/interested_areas_screen.dart';
import 'package:asap/view_model/login_controller.dart';
import 'package:asap/view_model/user_controller.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/snackbar_messenger.dart';

class RegistrationController extends GetxController {
  final LoginController _controller = Get.find();
  final GlobalKey<FormState> registrationFormKey = GlobalKey<FormState>();
  late final TextEditingController fullNameController;
  List<District> districts = [];
  late final TextEditingController emailController;
  late final TextEditingController districtController;
  late final TextEditingController mobileController;
  late final TextEditingController idController;
  final showLoading = false.obs;
  var isChecked = false.obs;
  String? accessToken;
  String? refreshToken;
  String? userID;
  String? name;

  @override
  void onInit() {
    super.onInit();
    chooseDistricts();
    fullNameController = TextEditingController();
    emailController = TextEditingController();
    mobileController = _controller.phoneController;
    districtController = TextEditingController();
    idController = TextEditingController();
  }

  validateRegistration() async {
    if (registrationFormKey.currentState!.validate() &&
        isChecked.value == true) {
      final studentData = {
        'name': fullNameController.text.trim(),
        'email': emailController.text.trim(),
        'mobile': mobileController.text.trim(),
        'district': idController.text.trim(),
        'from': "0",
        'loginVia': '1',
      };
      showLoading.value = true;

      final either = await AuthRepo().registerASAP(studentData);
      either.fold((error) {
        Get.showSnackbar(getxSnackbar(message: error.message, isError: true));
        showLoading.value = false;
      }, (response) async {
        dev.log("response is success");
        if (response['status'] == "OK") {
          dev.log("status is OK");
          Get.showSnackbar(
              getxSnackbar(message: response['message'], isError: false));
          accessToken = response['accessToken'];
          refreshToken = response['refreshToken'];
          userID = response['data']['_id'];
          name = response['data']['firstname'] ??
              '' + response['data']['lastname'] ??
              '';

          NewUserData user = NewUserData.fromJson(response['data']);
          dev.log("NewUserModel");
          UserController userController = Get.find();
          userController.setNewUser(user);

          await SharedPref.instence.setAccessToken(accessToken!);
          dev.log("accessToken");
          await SharedPref.instence.setRefreshToken(refreshToken!);
          dev.log("refreshToken");
          await SharedPref.instence.setIsNewUser(true);
          dev.log("New User");
          await SharedPref.instence.setName(name ?? '');
          dev.log("${name}stored");
          await SharedPref.instence.setUserId(userID ?? "");
          dev.log("User Id Stored");

          showLoading.value = false;

          Get.offAll(() => const InterestedAreasScreen());
        } else if (response['message'] == "Email/Mobile already exist") {
          showLoading.value = false;
          Get.showSnackbar(
              getxSnackbar(message: "Email already exist", isError: true));
        } else {
          showLoading.value = false;
          Get.showSnackbar(
              getxSnackbar(message: response['message'], isError: true));
        }
      });
    }
  }

  void chooseDistricts() async {
    final either = AuthRepo().fetchLocations();
    either.fold((error) {
      dev.log("error fetching locations");
      Get.showSnackbar(getxSnackbar(
          message: "Districts are not available right now", isError: true));
    }, (response) async {
      if (response['status'] == "OK") {
        dev.log("fetching locations");
        final rawList = response['data'] as List;

        final List<District> tempDistricts = rawList
            .map((e) => District.fromJson(e))
            .where((district) => district.districtName.isNotEmpty)
            .toList();

        tempDistricts.sort((a, b) => a.districtName.compareTo(b.districtName));

        districts = tempDistricts;
        dev.log(districts.length.toString());
        update();
      } else {
        Get.showSnackbar(getxSnackbar(
            message: "Districts are not available right now", isError: true));
      }
    });
  }

  void toggleCheckbox(bool value) {
    isChecked.value = value;
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

  void showDistrictPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        List<District> filteredDistricts = List.from(districts);
        TextEditingController searchController = TextEditingController();

        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text(
                'Select A District',
                style: CustomStyles.muslishTitleText,
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      style: CustomStyles.muslishText,
                      controller: searchController,
                      decoration: InputDecoration(
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.secondaryColor,
                            width: 0.0,
                          ),
                        ),
                        hintText: 'Search District',
                        hintStyle: CustomStyles.muslishText,
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          filteredDistricts = districts
                              .where((district) => district.districtName
                                  .toLowerCase()
                                  .contains(value.toLowerCase()))
                              .toList();
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 8.0), // Added for spacing
                  Expanded(
                    child: ListView.separated(
                      itemCount: filteredDistricts.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider(
                          color: Colors.grey[400], // Adjust color as needed
                          thickness: 0.5, // Adjust thickness as needed
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        final district = filteredDistricts[index];
                        return ListTile(
                          title: Text(
                            '${index + 1}. ${district.districtName}',
                            style: CustomStyles.muslishText,
                          ),
                          onTap: () {
                            districtController.text =
                                district.districtName.toString();
                            idController.text = district.id.toString();
                            Navigator.of(context).pop();
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  void onClose() {
    super.onClose();

    emailController.dispose();
    mobileController.dispose();
    districtController.dispose();
    idController.dispose();
  }
}
