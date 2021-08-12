import '../../../domain/entities/credential.dart';
import '../../../domain/services/auth_service.dart';
import '../../../../../../shared/auth/models/logged_user.dart';
import '../../../../../../shared/auth/oauth.dart';
import 'package:fpdart/fpdart.dart';

class AuthServiceImpl extends AuthService {
  const AuthServiceImpl({required OAuth auth}) : _auth = auth;

  final OAuth _auth;

  @override
  TaskEither<Exception, LoggedUser> currentUser() {
    return TaskEither(() async {
      final token = await _auth.currentToken;
      if (token == null) {
        return Either.left(Exception('Usuario nao autenticado'));
      }
      return Either.right(token.data);
    });
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

  @override
  Task<Unit> logout() {
    return Task(() async {
      await _auth.resetToken();
      return unit;
    });
  }
}
