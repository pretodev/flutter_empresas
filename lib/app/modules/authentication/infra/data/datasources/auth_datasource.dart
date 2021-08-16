import 'package:empresas_flutter/app/modules/authentication/domain/entities/credential.dart';
import 'package:empresas_flutter/app/modules/authentication/domain/entities/user.dart';

abstract class AuthDatasource {
  const AuthDatasource();

  Future<User?> getLoggedUser();

  Future<User> login(Credential credential);

  Future<void> logout();
}
