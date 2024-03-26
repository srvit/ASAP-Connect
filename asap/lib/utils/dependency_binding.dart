import 'package:asap/view_model/course_details.dart';
import 'package:asap/view_model/dashboardcontroller%20.dart';
import 'package:asap/view_model/interested_areas_controller.dart';
import 'package:asap/view_model/login_controller.dart';
import 'package:asap/view_model/recommented.dart';
import 'package:asap/view_model/registration_controller.dart';
import 'package:asap/view_model/search_controller.dart';
import 'package:asap/view_model/upcoming_events.dart';
import 'package:asap/view_model/user_controller.dart';
import 'package:get/get.dart';

class InitController extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.put(UserController());
    Get.lazyPut(() => RegistrationController());
    Get.lazyPut(() => InterestedAreasController());
    Get.lazyPut(() => QueryController());
    Get.lazyPut(() => RecommentedController());
    Get.lazyPut(() => UpcomingEventsController());
    Get.put(() => DetailsController());
    Get.put(() => DashboardController());
  }
}
