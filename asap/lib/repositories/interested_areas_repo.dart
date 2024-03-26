import 'package:asap/services/api_services.dart';
import 'package:asap/services/shared_pref.dart';
import 'package:asap/utils/url.dart';

class InterestedRepo {
  final accessToken = SharedPref.instence.getUserAccessToken();
  final refreshToken = SharedPref.instence.getUserAccessToken();
  EitherResponse getAreas() async =>
      await ApiService.getApi(AppUrl.getAllInterestedAreas, accessToken);

  EitherResponse updateAreas(Map data) async =>
      await ApiService.putApi(data, AppUrl.myInterestedAreas, accessToken);
}
