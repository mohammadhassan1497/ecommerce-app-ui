import 'package:equatable/equatable.dart';

import 'exceptions.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

// General failures
class ServerFailure extends Failure {}

class RemoteFailure extends Failure {
  final RemoteException exception;

  RemoteFailure(this.exception);

  @override
  String toString() => 'RemoteFailure: ${exception.message}';
}
