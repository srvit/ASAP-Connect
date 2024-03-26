import 'dart:developer' as dev;
import 'package:asap/model/course_details.dart';
import 'package:asap/repositories/course_repo.dart';
import 'package:asap/view/courses_details_screen/courses_details_screen.dart';
import 'package:asap/widgets/snackbar_messenger.dart';
import 'package:either_dart/either.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  List<CourseData> courseDetails = [];

  final showLoading = false.obs;

  // @override
  // onInit() {
  //   super.onInit();
  //   fetchCourseDatas();
  // }

  void fetchCourseDetails(querry) async {
    showLoading.value = true;
    dev.log(querry);

    final either = CourseRepo().getcourseDetails(querry);
    either.fold(
      (error) {
        dev.log("error fetchCourseDetails $error");
        Get.showSnackbar(getxSnackbar(message: error.message, isError: true));
        showLoading.value = false;
      },
      (response) async {
        if (response['status'] == "OK") {
          dev.log("fetchCourseDetails response success");
          // Map each element of response['data'] to InterestArea and assign to interestedAreas
          courseDetails = List<CourseData>.from(response['data']
              .map((dynamic item) => CourseData.fromJson(item)));
          dev.log(courseDetails.toString());
          showLoading.value = false;

          update();
          Get.to(() => CoursesDetailsScreen());
        } else {
          dev.log("error fetchCourseDetails");
          showLoading.value = false;

          // Handle the error scenario as needed
        }
      },
    );
  }
}
