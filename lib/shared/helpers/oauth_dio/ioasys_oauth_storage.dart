import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'iosys_aouth_token.dart';
import 'oauth.dart';

class IoasysOAuthStorage extends OAuthStorage<IoasysOAuthToken> {
  static const accessTokenKey = 'accessToken';
  static const clientKey = 'client';
  static const uidKey = 'uid';
  static const userKey = 'user';

  const IoasysOAuthStorage({required FlutterSecureStorage storage})
      : _storage = storage;

  final FlutterSecureStorage _storage;

  @override
  Future<void> clear() async {
    return _storage.deleteAll();
  }

  @override
  Future<IoasysOAuthToken?> fetch() async {
    final map = await _storage.readAll();
    final uid = map[uidKey];
    final client = map[clientKey];
    final accessToken = map[accessTokenKey];
    final userStr = map[userKey];
    if (uid == null || client == null || accessToken == null || userStr == null)
      return null;
    return IoasysOAuthToken(
      uid: uid,
      client: client,
      accessToken: accessToken,
      data: json.decode(userStr),
    );
  }

  @override
  Future<IoasysOAuthToken> save(IoasysOAuthToken token) async {
    await _storage.write(key: uidKey, value: token.uid);
    await _storage.write(key: clientKey, value: token.client);
    await _storage.write(key: accessTokenKey, value: token.accessToken);
    await _storage.write(key: userKey, value: json.encode(token.data));
    return token;
  }
}
