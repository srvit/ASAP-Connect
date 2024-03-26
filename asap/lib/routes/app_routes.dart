import 'package:asap/view/interested_areas_screen/interested_areas_screen.dart';
import 'package:asap/view/list_view_search_result_screen/list_view_search_result_screen.dart';
import 'package:asap/view/register_screen/register_screen.dart';
import 'package:flutter/material.dart';
import '../view/dashboard_container_screen/dashboard_container_screen.dart';
import '../view/skill_parks_details_screen/skill_parks_details_screen.dart';
import '../view/courses_details_screen/courses_details_screen.dart';
import '../view/community_screen/community_screen.dart';
import '../view/internships_screen/internships_screen.dart';
import '../view/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String dashboardContainerScreen = '/dashboard_container_screen';

  static const String dashboardPage = '/dashboard_page';

  static const String skillParksDetailsScreen = '/skill_parks_details_screen';

  static const String coursesDetailsScreen = '/courses_details_screen';

  static const String communityScreen = '/community_screen';

  static const String internshipsScreen = '/internships_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String interestedAreasScreen = '/interested_areas_screen';

  static const String listViewSearchResultScreen =
      '/list_view_search_result_screen';

  static const String registerScreen = '/register_screen';

  static Map<String, WidgetBuilder> routes = {
    dashboardContainerScreen: (context) => DashboardContainerScreen(),
    skillParksDetailsScreen: (context) => SkillParksDetailsScreen(),
    coursesDetailsScreen: (context) => CoursesDetailsScreen(),
    communityScreen: (context) => CommunityScreen(),
    internshipsScreen: (context) => InternshipsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    interestedAreasScreen: (context) => InterestedAreasScreen(),
    listViewSearchResultScreen: (context) => ListViewSearchResultScreen(),
    registerScreen: (context) => RegisterScreen(),
  };
}
