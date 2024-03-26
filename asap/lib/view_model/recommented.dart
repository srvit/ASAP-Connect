import 'dart:developer' as dev;
import 'package:asap/model/recommented_courses.dart';
import 'package:asap/repositories/course_repo.dart';
import 'package:asap/services/shared_pref.dart';
import 'package:asap/view/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:asap/view/splash_screen.dart';
import 'package:asap/view_model/login_controller.dart';
import 'package:asap/widgets/snackbar_messenger.dart';
import 'package:either_dart/either.dart';
import 'package:get/get.dart';

class RecommentedController extends GetxController {
  List<RecommentedCourse> recommentedCourses = [];

  final showLoading = false.obs;

  // @override
  // onInit() {
  //   super.onInit();
  //   fetchRecommentedCourses();
  // }

  void fetchRecommentedCourses() async {
    showLoading.value = true;

    final either = CourseRepo().getSuggestedCourses();
    either.fold(
      (error) {
        dev.log("error fetching recommented courses $error");
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
          dev.log("fetching recommented courses");
          // Map each element of response['data'] to InterestArea and assign to interestedAreas
          recommentedCourses = List<RecommentedCourse>.from(response['data']
                  ['courses']
              .map((dynamic item) => RecommentedCourse.fromJson(item)));
          dev.log(recommentedCourses.toString());
          showLoading.value = false;
          Get.off(() => const DashboardContainerScreen());
          update();
        } else {
          dev.log("error fetching Searched Courses");
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
