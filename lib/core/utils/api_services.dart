import 'package:dio/dio.dart';

import '../../resource/constants.dart';

class ApiServices{

  final Dio dio;

  ApiServices({required this.dio});

  Future<Map<String,dynamic>> get({required String endPoint}) async {
    final result = await dio.get('${AppConstants.baseUrl}$endPoint',queryParameters: {'api-key':'1vtFrBq3rdkMEmLKqWsTLqGkGA9DeGAq'});
    return result.data;
  }
}