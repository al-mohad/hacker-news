import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  DioExceptions.fromDioError(DioError dioError) {
    // Get.dialog(Scaffold(
    //   body: Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: ListView(
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: Text(
    //             dioError.toString(),
    //             style: TextStyle(height: 1.4),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // ));
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioErrorType.connectionTimeout:
        message = "Connection timeout with API server";
        break;
      case DioErrorType.unknown:
        message = "Something went wrong, please try later.";
        break;
      case DioErrorType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioErrorType.badResponse:
        message = _handleError(
            dioError.response!.statusCode!, dioError.response!.data);
        break;
      case DioErrorType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      default:
        message = "Something went wrong";
        break;
    }
  }

  late String message;

  String _handleError(int statusCode, dynamic error) {
    print(statusCode);
    switch (statusCode) {
      case 013:
        return 'No transactions history';
      case 400:
        return 'Bad request';
      case 401:
        return error["message"];
      case 403:
        return error["message"];
      case 404:
        return error["message"];
      case 422:
        return error["message"];
      case 500:
        return 'Internal server error';
      case 504:
        return 'Your request has timed out.';
      default:
        return 'Oops something went wrong';
    }
  }

  @override
  String toString() => message;
}
