import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  SharedPref._();
  static final SharedPref _instence = SharedPref._();
  static SharedPref get instence => _instence;

  static const String accessToken1 = 'accessToken';
  static const String refreshToken1 = 'refreshToken';
  static const String isNewUSer1 = 'isNewUSer';
  static const String name1 = 'name';
  static const String userID = 'id';

  late SharedPreferences sharedPref;

  initStorage() async {
    sharedPref = await SharedPreferences.getInstance();
  }

  setAccessToken(String accessToken) async {
    await sharedPref.setString(accessToken1, accessToken);
  }

  setRefreshToken(String refreshToken) async {
    await sharedPref.setString(refreshToken1, refreshToken);
  }

  setIsNewUser(bool isNewUSer) async {
    await sharedPref.setBool(isNewUSer1, isNewUSer);
  }

  setName(String name) async {
    await sharedPref.setString(name1, name);
  }

  setUserId(String userId) async {
    await sharedPref.setString(userID, userId);
  }
  // setVendor(VendorModel vendor) async {
  //   await sharedPref.setString(email, vendor.email);
  //   await sharedPref.setString(token, vendor.token!);
  //   await sharedPref.setString(password, vendor.password);
  // }

  signout() {
    log("signing out");
    sharedPref.remove(accessToken1);
    log("signing out accessToken1");

    sharedPref.remove(refreshToken1);
    log("signing out refreshToken1");

    sharedPref.remove(isNewUSer1);
    log("signing out isNewUSer1");

    sharedPref.remove(name1);
    log("signing out name1");

    sharedPref.remove(userID);
  }

  String? getUserAccessToken() => sharedPref.getString(accessToken1);
  String? getUserRefreshToken() => sharedPref.getString(refreshToken1);
  String? getName() => sharedPref.getString(name1);
  String? getUserId() => sharedPref.getString(userID);
}
