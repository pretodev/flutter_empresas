import 'package:empresas_flutter/app/data/models/credential.dart';
import 'package:empresas_flutter/app/data/models/logged_user.dart';
import 'package:fpdart/fpdart.dart';

abstract class AuthService {
  const AuthService();

  Task<bool> isAuthenticated();

  TaskEither<Exception, LoggedUser> login(Credential credential);

  Task<Unit> logout();
}
