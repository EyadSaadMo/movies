import 'package:flutter/material.dart';
import 'package:movies/core/network/error_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  ServerException({@required this.errorMessageModel});
}

// for i u work on local data base
class LocalDataBaseException implements Exception {
  final String error;

  const LocalDataBaseException({@required this.error});
}
