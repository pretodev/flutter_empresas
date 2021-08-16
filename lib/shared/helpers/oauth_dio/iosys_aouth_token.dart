import 'package:dio/dio.dart';

import 'oauth.dart';

class IoasysOAuthToken extends OAuthToken {
  final String accessToken;
  final String client;
  final String uid;
  final Map<String, dynamic> data;

  const IoasysOAuthToken({
    required this.accessToken,
    required this.client,
    required this.uid,
    required this.data,
  });

  factory IoasysOAuthToken.fromResponse(Response response) {
    return IoasysOAuthToken(
      uid: response.headers.value('uid')!,
      client: response.headers.value('client')!,
      accessToken: response.headers.value('access-token')!,
      data: {
        'id': response.data['investor']['id'],
        'name': response.data['investor']['investor_name'],
        'email': response.data['investor']['email'],
      },
    );
  }

  @override
  Map<String, dynamic> get asHeaders => {
        'uid': uid,
        'client': client,
        'access-token': accessToken,
      };
}
