import 'package:dio/dio.dart';
import 'iosys_aouth_token.dart';
import '../oauth.dart';

import 'ioasys_oauth_storage.dart';

class IoasysOAuth extends OAuth<IoasysOAuthToken> {
  static const requestPath = '/users/auth/sign_in';

  IoasysOAuth({
    required Dio dio,
    required IoasysOAuthStorage storage,
    required VoidCallback onUnauthorized,
  })  : _dio = dio,
        _storage = storage {
    _dio.interceptors.add(
      OAuthInterceptor(this, onUnauthorized: onUnauthorized),
    );
  }

  final Dio _dio;
  final IoasysOAuthStorage _storage;

  @override
  Future<IoasysOAuthToken> requestToken({
    required String email,
    required String password,
  }) async {
    final response = await _dio.post(
      requestPath,
      data: {'email': email, 'password': password},
      options: Options(contentType: Headers.jsonContentType),
    );
    final token = IoasysOAuthToken.fromResponse(response);
    return _storage.save(token);
  }

  @override
  Future<IoasysOAuthToken?> get currentToken => _storage.fetch();

  @override
  Dio get client => _dio;

  @override
  Future<void> resetToken() {
    return _storage.clear();
  }
}
