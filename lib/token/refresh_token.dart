import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ApiToken {
  final Dio api = Dio();
  String? accessToken;

  final _storage = const FlutterSecureStorage();

  ApiToken() {
    api.interceptors.add(InterceptorsWrapper(onRequest: ((options, handler) async{
      if(!options.path.contains('http')) {
        options.path = 'https://asia-southeast1-marlo-bank-dev.cloudfunctions.net/api_dev/balance'+options.path;
      }
      options.headers['Authorization'] = 'Bearer $accessToken';
      print("Token is here");
      return handler.next(options);
    }), onError:(DioError error,handler) async {
      if((error.response?.data['message']=="Invalid JWT")){
        if(await _storage.containsKey(key: 'refreshToken')) {
          if(await refreshToken()) {
            return handler.resolve(await _retry(error.requestOptions));
          }
        }
      }
      return handler.next(error);
    }));
  }
}

Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
  final options = Options(
    method: requestOptions.method,
    headers: requestOptions.headers,
  );
  var api;
  return api.request<dynamic>(requestOptions.path,
  data: requestOptions.data,
  queryParameters:requestOptions.queryParameters,
  options:options);
}

Future<bool> refreshToken() async {
  var _storage;
  final refershToken = await _storage.read(key:'refreshToken');
  var api;
  final response = await api.post('/auth/referesh', data:{'refreshToken':refershToken});

  if (response.statusCode == 201) {
      var accessToken = response.data;
      return true;
    } else {
      // refresh token is wrong
      var accessToken = null;
      _storage.deleteAll();
      return false;
    }
}