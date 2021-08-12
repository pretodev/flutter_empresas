import '../entities/credential.dart';
import '../../../../../shared/auth/models/logged_user.dart';
import 'package:fpdart/fpdart.dart';

abstract class AuthService {
  const AuthService();

  TaskEither<Exception, LoggedUser> currentUser();

  TaskEither<Exception, LoggedUser> login(Credential credential);

  Task<Unit> logout();
}
