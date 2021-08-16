import 'package:fpdart/fpdart.dart';

import '../../../../../../shared/helpers/errors.dart';
import '../../../domain/entities/credential.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/errors/errors.dart';
import '../../../domain/services/auth_service.dart';
import '../datasources/auth_datasource.dart';

class AuthServiceImpl implements AuthService {
  const AuthServiceImpl(this._authDatasource);

  final AuthDatasource _authDatasource;

  @override
  TaskEither<Failure, User?> currentUser() {
    return TaskEither(() async {
      final user = await _authDatasource.getLoggedUser();
      if (user != null) {
        return Either.right(user);
      }
      return Left(UserNotFound(message: 'Usuario não esta logado'));
    });
  }

  @override
  TaskEither<Failure, User> login(Credential credential) {
    return TaskEither(() async {
      final user = await _authDatasource.login(credential);
      return Either.right(user);
    });
  }

  @override
  TaskEither<Failure, Unit> logout() {
    return TaskEither(() async {
      await _authDatasource.logout();
      return Either.right(unit);
    });
  }
}
