class AppUrl {
  static const String _baseUrl = 'https://asapapi.srvinfotech.com';

  static const String login = '$_baseUrl/webApp/auth/login';
  static const String verifyOTP = '$_baseUrl/webApp/auth/otp-verification';
  static const String resendOTP = '$_baseUrl/';
  static const String register = '$_baseUrl/webApp/auth/register';
  static const String fetchLocations = '$_baseUrl/webApp/auth/select/district';
  static const String myInterestedAreas =
      '$_baseUrl/webApp/profile/interested-area';

  static const String getAllInterestedAreas = '$_baseUrl/options/sector';
  static const String courseDetails = '$_baseUrl/course/course_details';
  static const String geCoursesList = '$_baseUrl/course/course_ist';
  static const String sectorsList = '$_baseUrl/course/sectors_list';
  static const String getCoursePricing = '$_baseUrl/payment/course-pricing';
  static const String paymentMEthodsList = '$_baseUrl/payment/methods';
  static const String getDashBoardData = '$_baseUrl/webApp/dashboard';
  static const String getDashBoarEvents = '$_baseUrl/webApp/dashboard/event';
  static const String listEvents = '$_baseUrl/webApp/event-creation/events';
  static const String getCSPList = '$_baseUrl/course/sectors_list';
  static const String getDashBoardSuggestedCourses =
      '$_baseUrl/webApp/dashboard/suggested';

  static const String getTags = '$_baseUrl /course/tags';
}
