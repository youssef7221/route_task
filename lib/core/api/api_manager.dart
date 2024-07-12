import 'package:dio/dio.dart';

import '../utils/app_constants.dart';
class ApiManager{
Dio dio = Dio();

Future<Response> getDio(String endPoint) async{
  var response = await dio.get("${AppConstants.baseUrl}$endPoint");
  return response;
}
}