import 'dart:math';

import 'package:blogapp/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api_constants.dart';
import 'api_exception.dart';

class ApiClient {
  late Dio dio = Dio();
  late BaseOptions baseOptions;

  ApiClient() {
    baseOptions = BaseOptions(baseUrl: ApiConstants.mainurl);
    dio = Dio(baseOptions);
  }

  Future<Response> getRequest({required path}) async {
    try {
      var response = await dio.get(path);
      debugPrint("=======Api Request =========");

      debugPrint("baseUrl: ${ApiConstants.mainurl + path}");

      debugPrint("=======Api Response =========");

      debugPrint("status code: ${response.statusCode}");
      debugPrint("=======Response Data========");

      debugPrint("data: ${response.data}");

      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data);

        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());

        throw ApiExecption(message: e.response!.statusMessage);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        print(e.requestOptions);
        print(e.message);
        throw ApiExecption(message: e.message);
      }
    }
  }

  // for post Request========

  Future<Response> postRequest({required path, dynamic body}) async {
    var token = await Utils.getToken();
    final options = Options(
      headers: {"Authorization": "Bearer $token "},
    );
    try {
      var response = await dio.post(path, data: body, options: options);
      debugPrint("=======Api Request =========");

      debugPrint("baseUrl: ${ApiConstants.mainurl + path}");
      debugPrint("body: $body");

      debugPrint("=======Api Response =========");

      debugPrint("status code: ${response.statusCode}");
      debugPrint("=======Response Data========");

      debugPrint("data: ${response.data}");

      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data.toString());

        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());

        throw ApiExecption(message: e.response!.statusMessage);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        print(e.requestOptions);
        // ignore: avoid_print
        print(e.message);
        throw ApiExecption(message: e.message);
      }
    }
  }
}
