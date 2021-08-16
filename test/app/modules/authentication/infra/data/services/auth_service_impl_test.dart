import 'package:dio/dio.dart';
import 'package:empresas_flutter/app/modules/authentication/domain/entities/credential.dart';
import 'package:empresas_flutter/app/modules/authentication/infra/data/services/auth_service_impl.dart';
import 'package:empresas_flutter/shared/auth/models/logged_user.dart';
import 'package:empresas_flutter/shared/helpers/oauth_dio/oauth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockOAuth extends Mock implements OAuth {}

class MockToken extends Mock implements OAuthToken {}

class MockDioError extends Mock implements DioError {}

void main() {
  late MockOAuth oAuth;
  late AuthServiceImpl authService;
  late MockToken token;
  late MockDioError dioError;
  final user = LoggedUser(id: 1, email: 'dev@mail', name: 'dev');
  final requestOptions = RequestOptions(path: '');

  group('Auth Service', () {
    setUp(() {
      oAuth = MockOAuth();
      authService = AuthServiceImpl(auth: oAuth);
      token = MockToken();
      when(() => token.data).thenReturn(user);
      dioError = MockDioError();
      when(() => dioError.requestOptions).thenReturn(requestOptions);
    });

    group('Checagem de autenticacao', () {
      test('deve retornar um erro quando nao hover token', () async {
        when(() => oAuth.currentToken).thenAnswer((_) async => null);
        final result = await authService.currentUser().run();
        expect(result.fold(id, id), isA<Exception>());
      });

      test('deve retornar um usuario quando hover token', () async {
        when(() => oAuth.currentToken).thenAnswer((_) async => token);
        final result = await authService.currentUser().run();
        expect(result.fold(id, id), isA<LoggedUser>());
      });
    });

    group('Requisicao de token', () {
      test('deve retornar um usuario quando as credenciais estiverem corretas',
          () async {
        final credential = Credential(
          email: 'dev@mail.com',
          password: '123454321',
        );
        when(
          () => oAuth.requestToken(
            email: credential.email,
            password: credential.password,
          ),
        ).thenAnswer((_) async => token);
        final result = await authService.login(credential).run();
        expect(result.isRight(), true);
        expect(result.fold(id, id), isA<LoggedUser>());
      });

      test('deve retornar um erro quando as credenciais nao estiverem corretas',
          () async {
        final credential = Credential(
          email: 'error@mail.com',
          password: 'error',
        );
        when(
          () => oAuth.requestToken(
            email: credential.email,
            password: credential.password,
          ),
        ).thenThrow(UnauthorizedUser(dioError));
        final result = await authService.login(credential).run();
        expect(result.isLeft(), true);
        expect(result.fold(id, id), isA<UnauthorizedUser>());
      });
    });
  });
}
