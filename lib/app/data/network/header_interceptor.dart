import 'package:dio/dio.dart';
import 'package:get/get.dart' as get_x;

import '../../widgets/unknown_view.dart';

class HeaderInterceptors extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    get_x.Get.log('Request Url: ${options.baseUrl + options.path}');
    get_x.Get.log('Request query: ${options.queryParameters}');
    options.headers.addAll({
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Charset": "utf-8"
    });

    return super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 404) {
      get_x.Get.to(() => const UnknownRoute());
    }
    return super.onError(err, handler);
  }
}
