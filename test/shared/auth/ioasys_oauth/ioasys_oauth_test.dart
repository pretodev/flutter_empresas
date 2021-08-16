import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:empresas_flutter/shared/auth/ioasys_oauth/ioasys_oauth.dart';
import 'package:empresas_flutter/shared/auth/ioasys_oauth/ioasys_oauth_storage.dart';
import 'package:empresas_flutter/shared/auth/ioasys_oauth/iosys_aouth_token.dart';
import 'package:empresas_flutter/shared/helpers/oauth_dio/oauth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

class MockInterceptors extends Mock implements Interceptors {}

class MockStorage extends Mock implements IoasysOAuthStorage {}

void main() {
  final token =
      IoasysOAuthToken(accessToken: 'token', client: 'client', uid: 'uid');

  late OAuth oAuth;
  late Dio dio;
  late MockStorage storage;
  final requestOptions = RequestOptions(path: '');

  group('Ioasys OAuth', () {
    setUp(() {
      registerFallbackValue(token);
      dio = MockDio();
      when(() => dio.interceptors).thenReturn(MockInterceptors());
      storage = MockStorage();
      oAuth = IoasysOAuth(dio: dio, storage: storage, onUnauthorized: () {});
    });

    group('Token armazenado', () {
      test('Deve retornar um token quando existir token armazenado', () async {
        when(() => storage.fetch()).thenAnswer((_) async => token);
        final storedToken = await oAuth.currentToken;
        expect(storedToken, token);
      });

      test('Deve retornar null quando nao existir token armazenado', () async {
        when(() => storage.fetch()).thenAnswer((_) async => null);
        final storedToken = await oAuth.currentToken;
        expect(storedToken, null);
      });
    });

    group('Requisicao de token', () {
      test('Deve retornar e armazenar o token quando autenticado', () async {
        final email = 'testeapple@ioasys.com.br';
        final password = '12341234';
        when(
          () => dio.post(
            IoasysOAuth.requestPath,
            data: {'email': email, 'password': password},
            options: any(named: 'options'),
          ),
        ).thenAnswer(
          (_) async => Response(
            data: jsonDecode(jsonResponse),
            statusCode: 200,
            requestOptions: requestOptions,
            headers: Headers.fromMap(
              {
                'uid': [token.uid],
                'client': [token.client],
                'access-token': [token.accessToken],
              },
            ),
          ),
        );
        when(() => storage.save(any())).thenAnswer((_) async => token);
        final requestedToken =
            await oAuth.requestToken(email: email, password: password);
        expect(requestedToken, token);
      });

      test('OAuthInterceptor', () async {
        final dio = Dio();
        dio.options.baseUrl = 'test';
        dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
          return handler.reject(DioError(
            requestOptions: options,
            response: Response(statusCode: 401, requestOptions: options),
          ));
        }));
        oAuth = IoasysOAuth(dio: dio, storage: storage, onUnauthorized: () {});
        final email = 'test@mail.com';
        final password = '43214321';
        final requestedToken = oAuth.requestToken(
          email: email,
          password: password,
        );
        expect(
            () async => await requestedToken, throwsA(isA<UnauthorizedUser>()));
      });
    });
  });
}

final jsonResponse = r'''{
    "investor": {
        "id": 1,
        "investor_name": "Teste Apple",
        "email": "testeapple@ioasys.com.br",
        "city": "BH",
        "country": "Brasil",
        "balance": 1000000.0,
        "photo": null,
        "portfolio": {
            "enterprises_number": 0,
            "enterprises": []
        },
        "portfolio_value": 1000000.0,
        "first_access": false,
        "super_angel": false
    },
    "enterprise": null,
    "success": true
}''';
