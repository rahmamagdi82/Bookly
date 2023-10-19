import 'package:bookly_app_test/resource/constants.dart';
import 'package:dio/dio.dart';

class ApiServices{

  final Dio _dio = Dio(BaseOptions(baseUrl: AppConstants.baseUrl));

  Future<Map<String,dynamic>> get({required String endPoint}) async {
    final result = await _dio.get(endPoint);
    return result.data;
  }
}