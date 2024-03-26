import 'package:asap/services/api_services.dart';
import 'package:asap/utils/url.dart';

class AuthRepo {
  EitherResponse loginASAP(var rawData) async =>
      await ApiService.postApi(rawData, AppUrl.login);

  EitherResponse verifyOTP(var rawData) async =>
      await ApiService.postApi(rawData, AppUrl.verifyOTP);

  EitherResponse resendOTP(var rawData) async =>
      await ApiService.postApi(rawData, AppUrl.resendOTP);

  EitherResponse registerASAP(var rawData) async =>
      await ApiService.postApi(rawData, AppUrl.register);

  EitherResponse fetchLocations() async =>
      await ApiService.getApi(AppUrl.fetchLocations);
}
