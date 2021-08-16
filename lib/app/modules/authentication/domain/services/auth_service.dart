import 'package:fpdart/fpdart.dart';

import '../../../../../shared/helpers/errors.dart';
import '../entities/credential.dart';
import '../entities/user.dart';

abstract class AuthService {
  const AuthService();

  TaskEither<Failure, User?> currentUser();

  TaskEither<Failure, User> login(Credential credential);

  TaskEither<Failure, Unit> logout();
}
