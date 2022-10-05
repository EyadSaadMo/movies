import 'package:equatable/equatable.dart';
/// all failure in app include remote and local
abstract class Failure extends Equatable{
  final String message;

  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

class ServerFailure extends Failure{
  ServerFailure(String message) : super(message);
}
class DataBaseFailure extends Failure{
  DataBaseFailure(String message) : super(message);
}