import 'package:empresas_flutter/app/data/models/logged_user.dart';
import 'package:fpdart/fpdart.dart';

abstract class AuthService {
  TaskOption<LoggedUser> getCurrentUser();

  TaskEither<Exception, LoggedUser> login();
}
