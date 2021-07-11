import 'package:dio/dio.dart';
import 'package:empresas_flutter/app/data/models/logged_user.dart';

import 'oauth.dart';

class IoasysOAuthToken extends OAuthToken<LoggedUser> {
  final String accessToken;
  final String client;
  final String uid;
  final LoggedUser? data;

  const IoasysOAuthToken({
    required this.accessToken,
    required this.client,
    required this.uid,
    this.data,
  });

  factory IoasysOAuthToken.fromResponse(Response response) {
    return IoasysOAuthToken(
      uid: response.headers.value('uid')!,
      client: response.headers.value('client')!,
      accessToken: response.headers.value('access-token')!,
      data: LoggedUser(
        id: response.data['investor']['id'],
        name: response.data['investor']['investor_name'],
        email: response.data['investor']['email'],
      ),
    );
  }

  @override
  Map<String, dynamic> get asHeaders => {
        'uid': uid,
        'client': client,
        'access-token': accessToken,
      };
}
