abstract class Failure implements Exception {
  String? get message;
}

class DatasourceError extends Failure {
  @override
  final String? message;
  DatasourceError({
    this.message,
  });
}

class RepositoryFailure extends Failure {
  @override
  final String? message;
  RepositoryFailure({
    this.message,
  });
}

class ServiceFailure extends Failure {
  @override
  final String? message;
  ServiceFailure({
    this.message,
  });
}
