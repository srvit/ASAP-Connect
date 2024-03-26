import 'package:asap/services/api_services.dart';
import 'package:asap/services/shared_pref.dart';
import 'package:asap/utils/url.dart';

class EventRepo {
  final accessToken = SharedPref.instence.getUserAccessToken();
  final refreshToken = SharedPref.instence.getUserAccessToken();
  EitherResponse listEvents() async =>
      await ApiService.getApi(AppUrl.listEvents, accessToken);
}
