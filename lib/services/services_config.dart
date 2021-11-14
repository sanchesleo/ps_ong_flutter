import 'package:dio/dio.dart';

class ServiceConfig {
  String _url = '';
  int timeout;

  ServiceConfig(this._url, {this.timeout = 5000});

  Dio create() {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: _url,
        connectTimeout: timeout,
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions request) async {
          print(request);
          return request;
        },
        onResponse: (Response response) async {
          print(response);
          return response;
        },
        onError: (DioError error) async {
          print(error);
          return error;
        },
      ),
    );
    return dio;
  }
}
