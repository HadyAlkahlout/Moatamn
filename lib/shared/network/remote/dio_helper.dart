import 'package:dio/dio.dart';

import '../../component/constants.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: Constants.baseURL,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  // static Future<Response> getNews({
  //   required Map<String, dynamic> query,
  // }) async {
  //   return await dio.get(
  //     Constants.newsEndpoint,
  //     queryParameters: query,
  //   );
  // }
}
