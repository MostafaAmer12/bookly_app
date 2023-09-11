import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMsg;

  Failure(this.errorMsg);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMsg);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with Api Server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with Api Server');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate from Api Server');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Request with Api Server was cancelled');

      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');

      case DioExceptionType.unknown:
        return ServerFailure('Unexpected error, try again later!');
      default:
        return ServerFailure('Opps there was an error, try again later!');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, try again later!');
    } else {
      return ServerFailure('Opps there was an error, try again later!');
    }
  }
}
