import 'package:dio/dio.dart';

/// Token
abstract class OAuthToken<T> {
  const OAuthToken();

  T? get data;

  Map<String, dynamic> get asHeaders;
}

/// Use to implement custom token storage
abstract class OAuthStorage<Token extends OAuthToken> {
  const OAuthStorage();

  /// Read token
  Future<Token?> fetch();

  /// Save Token
  Future<Token> save(Token token);

  /// Clear token
  Future<void> clear();
}

/// OAuth Client
abstract class OAuth<Token extends OAuthToken> {
  const OAuth();

  Future<Token?> get currentToken;

  Future<Token> requestToken({
    required String email,
    required String password,
  });

  Future<void> resetToken();

  Dio get client;
}

// Dio Interceptor
class OAuthInterceptor extends InterceptorsWrapper {
  final OAuth oauth;
  final VoidCallback? onUnauthorized;

  OAuthInterceptor(this.oauth, {this.onUnauthorized});

  /// Add token as headers on request
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handle) async {
    final token = await oauth.currentToken;
    if (token != null) {
      options.headers.addAll(token.asHeaders);
    }
    return handle.next(options);
  }

  @override
  void onError(DioError error, ErrorInterceptorHandler handler) {
    if (error.response?.statusCode == 401) {
      oauth.resetToken();
      if (onUnauthorized != null) {
        onUnauthorized!();
      }
      return handler.next(UnauthorizedUser(error));
    }
    return handler.next(error);
  }
}

/// OAuth Unauthorized User Error
class UnauthorizedUser extends DioError {
  UnauthorizedUser(DioError error)
      : super(requestOptions: error.requestOptions);

  @override
  String get message => 'Credenciais incorretas';
}
