import 'dart:async'; // ✅ For TimeoutException
import 'dart:convert';
import 'dart:io';

import 'package:bloc_clean_coding/data/exceptions/app_exceptions.dart';
import 'package:bloc_clean_coding/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkServicesApi implements BaseApiServices {
  @override
  Future<dynamic> getApi({required String url}) async {
    try {
      var response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 50));
      print(response);
      return returnResponse(response);
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw FetchDataException("Time out try again");
    }
  }

  @override
  Future<dynamic> postApi({required String url, required dynamic data}) async {
    try {
      var response = await http.post(
        Uri.parse(url),
        body: data,
        headers: {
          "x-api-key": "reqres-free-v1",
          "Content-Type":
              "application/x-www-form-urlencoded", // ✅ Important if form data
        },
      ).timeout(const Duration(seconds: 50));

      print("API call reached");
      final jsonResponse = returnResponse(response);
      print(jsonResponse);
      return jsonResponse;
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw FetchDataException("Time out try again");
    }
  }

  dynamic returnResponse(http.Response response) {
    try {
      switch (response.statusCode) {
        case 200:
        case 400:
          return json.decode(response.body);
        case 500:
          throw FetchDataException("Error communicating with server");
        default:
          throw FetchDataException("Unexpected error: ${response.statusCode}");
      }
    } catch (e) {
      throw FetchDataException("Failed to parse response: $e");
    }
  }
}
