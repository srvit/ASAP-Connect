import 'package:asap/model/dashboard_data.dart';
import 'package:asap/model/ongoing_course.dart';
import 'package:asap/repositories/dashboard_repo.dart';
import 'package:asap/services/shared_pref.dart';
import 'package:asap/view/splash_screen.dart';
import 'package:asap/view_model/login_controller.dart';
import 'package:get/get.dart';
import 'dart:developer' as dev;
import 'package:asap/widgets/snackbar_messenger.dart';
import 'package:either_dart/either.dart';

class DashboardController extends GetxController {
  User? dashboardData;
  TrainingModel? ongoingCourse;
  var showAppBar = true.obs;
  final showLoading = false.obs;
  @override
  onInit() {
    super.onInit();
    getDashBoardData();
  }

  void toggleAppBar(bool value) {
    showAppBar.value = value;
  }

  void getngoingCourse() {}

  void getDashBoardData() async {
    showLoading.value = true;

    final either = DashBoardRepo().listDashBoardData();
    either.fold(
      (error) {
        dev.log("error getDashBoardData $error");
        Get.showSnackbar(getxSnackbar(message: error.message, isError: true));
        showLoading.value = false;

        SharedPref.instence.signout();
        Get.showSnackbar(
          getxSnackbar(
            message: " Logged out",
            isError: false,
          ),
        );
        Get.offAll(() => const SplashScreen());
      },
      (response) async {
        if (response['status'] == "OK") {
          dev.log("fetching getDashBoardData");
          // Map each element of response['data'] to InterestArea and assign to interestedAreas
          dashboardData = User.fromJson(response['data']);

          dev.log(dashboardData.toString());
          showLoading.value = false;

          update();
        } else {
          dev.log("error getDashBoardData");
          showLoading.value = false;

          SharedPref.instence.signout();
          Get.showSnackbar(
            getxSnackbar(
              message: " Logged out",
              isError: false,
            ),
          );
          Get.offAll(() => const SplashScreen());
          // Handle the error scenario as needed
        }
      },
    );
  }
}
