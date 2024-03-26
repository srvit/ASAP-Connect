import 'dart:developer' as dev;
import 'package:asap/model/nearbyevents.dart';
import 'package:asap/repositories/dashboard_repo.dart';
import 'package:asap/services/shared_pref.dart';
import 'package:asap/view/splash_screen.dart';
import 'package:asap/view_model/login_controller.dart';
import 'package:asap/widgets/snackbar_messenger.dart';
import 'package:either_dart/either.dart';
import 'package:get/get.dart';

class UpcomingEventsController extends GetxController {
  List<NearbyEvent> upcomingEvents = [];

  final showLoading = false.obs;

  @override
  onInit() {
    super.onInit();
    fetchUpcomingEvents();
  }

  void fetchUpcomingEvents() async {
    showLoading.value = true;

    final either = DashBoardRepo().getnearbyEvents();
    either.fold(
      (error) {
        dev.log("error fetchUpcomingEvents $error");
        Get.showSnackbar(getxSnackbar(message: error.message, isError: true));
        showLoading.value = false;
        SharedPref.instence.signout();
        Get.find<LoginController>().phoneController.clear();
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
          dev.log("fetchUpcomingEvents");
          // Map each element of response['data'] to InterestArea and assign to interestedAreas
          upcomingEvents = List<NearbyEvent>.from(response['data']['events']
              .map((dynamic item) => NearbyEvent.fromJson(item)));
          dev.log(upcomingEvents.toString());
          showLoading.value = false;

          update();
        } else {
          dev.log("error fetchUpcomingEvents");
          showLoading.value = false;
          SharedPref.instence.signout();
          Get.find<LoginController>().phoneController.clear();
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
