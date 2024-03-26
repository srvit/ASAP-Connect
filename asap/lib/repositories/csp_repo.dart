import 'package:asap/services/api_services.dart';
import 'package:asap/services/shared_pref.dart';
import 'package:asap/utils/url.dart';

class CSPRepo {
  final accessToken = SharedPref.instence.getUserAccessToken();
  final refreshToken = SharedPref.instence.getUserAccessToken();
  EitherResponse getCSP() async => await ApiService.getApi(AppUrl.getCSPList);
}
