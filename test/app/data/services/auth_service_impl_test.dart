import 'dart:math';

import 'package:empresas_flutter/app/data/external/ioasys_oauth/oauth.dart';
import 'package:empresas_flutter/app/data/models/credential.dart';
import 'package:empresas_flutter/app/data/models/logged_user.dart';
import 'package:empresas_flutter/app/data/services/auth_service_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockOAuth extends Mock implements OAuth {}

class MockToken extends Mock implements OAuthToken {}

void main() {
  late MockOAuth oAuth;
  late AuthServiceImpl authService;
  late MockToken token;
  final user = LoggedUser(id: 1, email: 'dev@mail', name: 'dev');

  group('Auth Service', () {
    setUp(() {
      oAuth = MockOAuth();
      authService = AuthServiceImpl(auth: oAuth);
      token = MockToken();
      when(() => token.data).thenReturn(user);
    });

    group('Checagem de autenticacao', () {
      test('deve retornar false para usuario quando nao hover token', () async {
        when(() => oAuth.currentToken).thenAnswer((_) async => null);
        final result = await authService.isAuthenticated().run();
        expect(result, false);
      });

      test('deve retornar true para usuario quando hover token', () async {
        when(() => oAuth.currentToken).thenAnswer((_) async => token);
        final result = await authService.isAuthenticated().run();
        expect(result, true);
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
        ).thenThrow(UnauthorizedUser());
        final result = await authService.login(credential).run();
        expect(result.isLeft(), true);
        expect(result.fold(id, id), isA<UnauthorizedUser>());
      });
    });
  });
}
