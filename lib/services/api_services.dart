import 'dart:convert';
import 'dart:developer' as dev;
import 'dart:io';
import 'package:asap_student_app/utils/app_exceptions.dart';
import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;

typedef EitherResponse<T> = Future<Either<AppException, T>>;

class ApiService {
  static final _headers = {'Content-Type': 'application/json'};

  static EitherResponse<Map> postApi(var rawData, String url,
      [String? token]) async {
    Map fetchedData = {};
    if (token != null) {
      _headers['token'] = token;
    }
    final uri = Uri.parse(url);
    final body = jsonEncode(rawData);
    dev.log(body);
    try {
      final response = await http.post(uri, body: body, headers: _headers);
      dev.log(response.statusCode.toString());
      fetchedData = _getResponse(response);
      dev.log(fetchedData.toString());
    } on SocketException {
      return Left(InternetException());
    } on http.ClientException {
      return Left(RequestTimeOUtException());
    } catch (e) {
      dev.log(e.toString());
      return Left(e as AppException);
    }
    return Right(fetchedData);
  }

  static EitherResponse getApi(String url, [String? token]) async {
    final uri = Uri.parse(url);
    if (token != null) {
      _headers['token'] = token;
    }
    dynamic fetchedData;
    try {
      final response = await http.get(uri, headers: _headers);
      fetchedData = _getResponse(response);
    } on SocketException {
      return Left(InternetException());
    } on http.ClientException {
      return Left(RequestTimeOUtException());
    } catch (e) {
      return Left(BadRequestException());
    }
    return Right(fetchedData);
  }

  static EitherResponse putApi(var rawData, String url, String token) async {
    final uri = Uri.parse(url);
    final body = jsonEncode(rawData);
    _headers['token'] = token;
    dynamic fetchedData;

    try {
      final response = await http.put(uri, body: body, headers: _headers);
      fetchedData = _getResponse(response);
    } on SocketException {
      return Left(InternetException());
    } on http.ClientException {
      return Left(RequestTimeOUtException());
    } catch (e) {
      return Left(BadRequestException());
    }
    return Right(fetchedData);
  }

  static EitherResponse<Map> patchApi(
    var userData,
    String url,
    String token,
  ) async {
    final uri = Uri.parse(url);
    final body = jsonEncode(userData);
    _headers['token'] = token;
    Map<String, dynamic> fetchedData = {};
    try {
      final response = await http.patch(uri, body: body, headers: _headers);
      fetchedData = _getResponse(response);
    } on SocketException {
      return Left(InternetException());
    } on http.ClientException {
      return Left(RequestTimeOUtException());
    } catch (e) {
      return Left(e as AppException);
    }
    return Right(fetchedData);
  }

  static EitherResponse deleteApi(String url, String token) async {
    _headers['token'] = token;
    dynamic fetchedData;
    final uri = Uri.parse(url);
    try {
      final response = await http.delete(uri, headers: _headers);
      fetchedData = _getResponse(response);
    } on SocketException {
      return Left(InternetException());
    } on http.ClientException {
      return Left(RequestTimeOUtException());
    } catch (e) {
      return Left(e as AppException);
    }
    return Right(fetchedData);
  }

  static dynamic _getResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return (jsonDecode(response.body));
      case 400:
        throw BadRequestException();
      default:
        throw BadRequestException();
    }
  }
}
