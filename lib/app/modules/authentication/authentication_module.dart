import 'package:flutter_modular/flutter_modular.dart';

import 'infra/data/services/auth_service_impl.dart';
import 'infra/external/ioasys_api/ioasys_auth_datasource.dart';
import 'presenter/pages/login/login_controller.dart';
import 'presenter/pages/login/login_page.dart';
import 'presenter/pages/login/stores/login_store.dart';
import 'presenter/pages/splash/splash_controller.dart';
import 'presenter/pages/splash/splash_page.dart';

class AuthenticationModule extends Module {
  @override
  final binds = [
    Bind.lazySingleton((i) => IoasysAuthDatasource(i())),
    Bind.lazySingleton((i) => AuthServiceImpl(i())),
    Bind.lazySingleton((i) => LoginStore(i())),
    Bind.factory((i) => LoginController(i())),
    Bind.factory((i) => SplashController(i())),
  ];

  @override
  final routes = [
    ChildRoute('/', child: (_, args) => SplashPage()),
    ChildRoute('/login', child: (_, args) => LoginPage()),
  ];
}
