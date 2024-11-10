import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failure {
  final String massage;

  Failure(this.massage);
}

class ServerFailure extends Failure {
  ServerFailure(super.massage);
  factory ServerFailure.Errormassage(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection timeout with api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send Timeout with api server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive Timeout with api server');

      case DioExceptionType.badCertificate:
        return ServerFailure('bad Certificate with api server');

      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponser(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request api is cancel');

      case DioExceptionType.connectionError:
        return ServerFailure('no internet try again');

      case DioExceptionType.unknown:
        return ServerFailure('oops there is an error ,try again');
    }
  }
  factory ServerFailure.fromBadResponser(int statuscode, dynamic response) {
    if (statuscode==404)
    {
        return ServerFailure('Request is not found ');

    }else if (statuscode==500)
    {        return ServerFailure('thre was problem in server,try later');


    }else if (statuscode ==400||statuscode ==401||statuscode==403)
    {
        return ServerFailure(response['error']['massage']);

    }else {
        return ServerFailure('ther was an error');

    }
    
    
  }
}

// class CacheFailure extends Failure {}

// class NetworkFailure extends Failure {}
