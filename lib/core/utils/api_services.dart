import 'package:dio/dio.dart';

class APIServices {
  final Dio _dio;
  const APIServices(this._dio);

  Future<Map<String, dynamic>> get(final String link) async {
    final Response response = await _dio.get(link);
    print(response.data);
    return response.data;
  }
}
