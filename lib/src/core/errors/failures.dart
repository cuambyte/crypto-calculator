abstract final class Failure {
  final String message;
  final int? code;

  const Failure({required this.message, this.code});

  @override
  String toString() => message;
}

final class ServerFailure extends Failure {
  const ServerFailure({required super.message, super.code});
}

final class NetworkFailure extends Failure {
  const NetworkFailure({required super.message, super.code});
}

final class ValidationFailure extends Failure {
  const ValidationFailure({required super.message, super.code});
}

final class UnknownFailure extends Failure {
  const UnknownFailure({required super.message, super.code});
}
