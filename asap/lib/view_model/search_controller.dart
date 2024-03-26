import 'dart:developer' as dev;
import 'package:asap/model/course_list.dart';
import 'package:asap/repositories/course_repo.dart';
import 'package:asap/widgets/snackbar_messenger.dart';
import 'package:either_dart/either.dart';
import 'package:get/get.dart';

class QueryController extends GetxController {
  List<Course> searchedCourses = [];

  final showLoading = false.obs;

  void fetchSearchResults(String query) async {
    showLoading.value = true;

    final either = CourseRepo().getCourses(query);
    either.fold(
      (error) {
        dev.log("error fetching Search Results $error");
        Get.showSnackbar(getxSnackbar(message: error.message, isError: true));
        showLoading.value = false;
      },
      (response) async {
        if (response['status'] == "OK") {
          dev.log("fetching Search Results");
          // Map each element of response['data'] to InterestArea and assign to interestedAreas
          searchedCourses = List<Course>.from(
              response['data'].map((dynamic item) => Course.fromJson(item)));
          dev.log(searchedCourses.toString());
          showLoading.value = false;

          update();
        } else {
          dev.log("error fetching Searched Courses");
          showLoading.value = false;
          // Handle the error scenario as needed
        }
      },
    );
  }
}
