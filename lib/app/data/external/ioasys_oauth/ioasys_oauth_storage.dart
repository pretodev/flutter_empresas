import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'iosys_aouth_token.dart';
import 'oauth.dart';

class OAuthTokenNotExists implements Exception {
  String toString() => 'Token de autenticacao nao foi armazenado.';
}

class IoasysOAuthStorage extends OAuthStorage<IoasysOAuthToken> {
  static const accessTokenKey = 'accessToken';
  static const clientKey = 'client';
  static const uidKey = 'uid';

  const IoasysOAuthStorage({required FlutterSecureStorage storage})
      : _storage = storage;

  final FlutterSecureStorage _storage;

  @override
  Future<void> clear() async {
    return _storage.deleteAll();
  }

  @override
  Future<IoasysOAuthToken?> fetch() async {
    final uid = await _storage.read(key: uidKey);
    final client = await _storage.read(key: clientKey);
    final accessToken = await _storage.read(key: accessTokenKey);
    if (uid == null || client == null || accessToken == null) return null;
    return IoasysOAuthToken(uid: uid, client: client, accessToken: accessToken);
  }

  @override
  Future<IoasysOAuthToken> save(IoasysOAuthToken token) async {
    await _storage.write(key: uidKey, value: token.uid);
    await _storage.write(key: clientKey, value: token.client);
    await _storage.write(key: accessTokenKey, value: token.accessToken);
    return token;
  }
}
