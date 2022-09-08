import 'package:dio/dio.dart';

class Services {
  final Dio api = Dio();

  Services() {
    api.options.baseUrl = "http://192.168.0.102:3000";
    api.options.validateStatus = (status) => status! <= 201;
    api.options.headers.clear();
    api.options.headers.addAll({
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    });
  }
}
