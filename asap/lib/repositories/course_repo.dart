import 'package:asap/services/api_services.dart';
import 'package:asap/services/shared_pref.dart';
import 'package:asap/utils/url.dart';

class CourseRepo {
  final accessToken = SharedPref.instence.getUserAccessToken();
  final refreshToken = SharedPref.instence.getUserAccessToken();
  EitherResponse getSuggestedCourses() async =>
      await ApiService.getApi(AppUrl.getDashBoardSuggestedCourses, accessToken);
  EitherResponse getCourses(String query) async =>
      await ApiService.getApi('${AppUrl.geCoursesList}?search=$query');

  EitherResponse getcourseDetails(String query) async =>
      await ApiService.getApi(
        "${AppUrl.courseDetails}?course_id=$query",
      );
}
