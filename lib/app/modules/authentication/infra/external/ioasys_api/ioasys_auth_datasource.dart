import 'package:empresas_flutter/app/modules/authentication/domain/entities/user.dart';
import 'package:empresas_flutter/app/modules/authentication/domain/entities/credential.dart';
import 'package:empresas_flutter/app/modules/authentication/infra/data/datasources/auth_datasource.dart';
import 'package:empresas_flutter/shared/helpers/oauth_dio/ioasys_oauth.dart';

import 'ioasys_auth_mapper.dart';

class IoasysAuthDatasource implements AuthDatasource {
  final IoasysOAuth _auth;

  IoasysAuthDatasource(this._auth);

  @override
  Future<User?> getLoggedUser() async {
    final token = await _auth.currentToken;
    if (token == null) {
      return null;
    }
    return IoasysAuthMapper.fromOAuth(token.data);
  }

  @override
  Future<User> login(Credential credential) async {
    final token = await _auth.requestToken(
      email: credential.email,
      password: credential.password,
    );
    return IoasysAuthMapper.fromOAuth(token.data);
  }

  @override
  Future<void> logout() async {
    await _auth.resetToken();
  }
}
