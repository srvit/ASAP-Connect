import 'package:asap_student_app/services/api_services.dart';
import 'package:asap_student_app/utils/url.dart';

class AuthRepo {
  EitherResponse loginASAP(var rawData) async =>
      await ApiService.postApi(rawData, AppUrl.login);

  EitherResponse verifyOTP(var rawData) async =>
      await ApiService.postApi(rawData, AppUrl.verifyOTP);

  EitherResponse resendOTP(var rawData) async =>
      await ApiService.postApi(rawData, AppUrl.resendOTP);

  EitherResponse registerASAP(var rawData) async =>
      await ApiService.postApi(rawData, AppUrl.register);
}
