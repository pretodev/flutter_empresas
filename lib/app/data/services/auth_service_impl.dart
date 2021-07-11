import 'package:empresas_flutter/app/data/external/ioasys_oauth/oauth.dart';
import 'package:empresas_flutter/app/data/models/credential.dart';
import 'package:empresas_flutter/app/data/models/logged_user.dart';
import 'package:empresas_flutter/app/data/services/interfaces/auth_service.dart';
import 'package:fpdart/fpdart.dart';

class AuthServiceImpl extends AuthService {
  const AuthServiceImpl({required OAuth auth}) : _auth = auth;

  final OAuth _auth;

  @override
  Task<bool> isAuthenticated() {
    return Task(() async => await _auth.currentToken != null);
  }

  @override
  TaskEither<Exception, LoggedUser> login(Credential credential) {
    return TaskEither(() async {
      try {
        final token = await _auth.requestToken(
          email: credential.email,
          password: credential.password,
        );
        return Either.right(token.data);
      } on UnauthorizedUser catch (error) {
        return Either.left(error);
      }
    });
  }
}
