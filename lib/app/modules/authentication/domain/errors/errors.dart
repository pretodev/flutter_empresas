import '../../../../../shared/helpers/errors.dart';

abstract class FailureAuthentication implements Failure {}

class GetLoggedUserFailure implements FailureAuthentication {
  @override
  final String? message;
  GetLoggedUserFailure({
    this.message,
  });
}

class UserNotFound implements FailureAuthentication {
  @override
  final String? message;
  UserNotFound({
    this.message,
  });
}
