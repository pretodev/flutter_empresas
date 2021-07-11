import 'package:dio/dio.dart';
import 'package:empresas_flutter/app/data/services/auth_service_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'app/app_widget.dart';
import 'app/data/external/ioasys_oauth/ioasys_oauth.dart';
import 'app/data/external/ioasys_oauth/ioasys_oauth_storage.dart';

void main() {
  final Dio dio = Dio(BaseOptions(
    baseUrl: 'https://empresas.ioasys.com.br/api/v1',
  ));
  final storage = FlutterSecureStorage();
  final oauthStorage = IoasysOAuthStorage(storage: storage);
  final oauth = IoasysOAuth(dio: dio, storage: oauthStorage);

  final authService = AuthServiceImpl(auth: oauth);

  runApp(AppWidget(
    authService: authService,
  ));
}
