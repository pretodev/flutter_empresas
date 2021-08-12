import 'package:dio/dio.dart';
import 'modules/authentication/authentication_module.dart';
import 'modules/company/company_module.dart';
import '../shared/auth/cubit/auth_cubit.dart';
import '../shared/auth/ioasys_oauth/ioasys_oauth.dart';
import '../shared/auth/ioasys_oauth/ioasys_oauth_storage.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppModule extends Module {
  @override
  final binds = [
    Bind.lazySingleton(
      (i) => Dio(
        BaseOptions(baseUrl: 'https://empresas.ioasys.com.br/api/v1'),
      ),
    ),
    Bind.lazySingleton((i) => FlutterSecureStorage()),
    Bind.lazySingleton((i) => IoasysOAuthStorage(storage: i())),
    Bind.lazySingleton(
      (i) => IoasysOAuth(
        dio: i(),
        storage: i(),
        onUnauthorized: () => Modular.to.navigate('/login'),
      ),
    ),
    Bind.singleton((i) => AuthCubit()),
  ];

  @override
  final routes = [
    ModuleRoute('/', module: AuthenticationModule()),
    ModuleRoute('/companies', module: CompanyModule()),
  ];
}
