import 'package:dio/dio.dart';
import 'package:elevate_cycle2/config/constants.dart';
import 'package:elevate_cycle2/core/di/api_manager/api_result.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiManager {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: BASE_URL,
  ));

  Future<Response> getData({required String endPoint}) async {
    var response = await _dio.get(endPoint);
    return response;
  }
}
