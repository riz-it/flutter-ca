import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

// Server failures
class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

// Connection failures
class ConnectionFailure extends Failure {
  const ConnectionFailure(super.message);
}

// Timeout failures
class TimeoutFailure extends Failure {
  const TimeoutFailure(super.message);
}

// Cache failures
class CachedFailure extends Failure {
  const CachedFailure(super.message);
}

// Not found failures
class NotFoundFailure extends Failure {
  const NotFoundFailure(super.message);
}