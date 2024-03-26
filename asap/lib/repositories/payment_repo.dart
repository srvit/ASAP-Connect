import 'package:asap/services/api_services.dart';
import 'package:asap/services/shared_pref.dart';
import 'package:asap/utils/url.dart';

class PaymentRepo {
  final accessToken = SharedPref.instence.getUserAccessToken();
  final refreshToken = SharedPref.instence.getUserAccessToken();
  EitherResponse getPaymentMethods() async =>
      await ApiService.getApi(AppUrl.paymentMEthodsList, accessToken);

  EitherResponse getPaymentDetails() async =>
      await ApiService.getApi(AppUrl.getCoursePricing, accessToken);
}
