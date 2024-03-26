import 'package:asap/model/existing_user.dart';
import 'package:asap/model/newuserdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  ExistingUserModel? existingUser;
  NewUserData? newUser;
  String? searchText;
  TextEditingController searchController = TextEditingController();

  // Method to set existing user data
  void setExistingUser(ExistingUserModel user) {
    existingUser = user;
    update();
  }

  // Method to set new user data
  void setNewUser(NewUserData user) {
    newUser = user;
    update();
  }

  void setText(String text) {
    searchText = text;
    update();
  }
}
