import 'package:dio/dio.dart';

class APIServices {
  const APIServices();

  Future<Map<String, dynamic>> get(final String link) async {
    final Response response = await Dio().get(link);
    print(response.data);
    return response.data;
  }
}
