import 'package:asap/services/api_services.dart';
import 'package:asap/services/shared_pref.dart';
import 'package:asap/utils/url.dart';

class DashBoardRepo {
  final accessToken = SharedPref.instence.getUserAccessToken();
  final refreshToken = SharedPref.instence.getUserAccessToken();
  EitherResponse listDashBoardData() async =>
      await ApiService.getApi(AppUrl.getDashBoardData, accessToken);

  EitherResponse getnearbyEvents() async =>
      await ApiService.getApi(AppUrl.getDashBoarEvents, accessToken);
}
