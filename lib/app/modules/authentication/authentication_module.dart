import 'infra/data/services/auth_service_impl.dart';
import 'presenter/pages/login/cubit/login_cubit.dart';
import 'presenter/pages/login/login_page.dart';
import 'presenter/pages/splash/splash_controller.dart';
import 'presenter/pages/splash/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthenticationModule extends Module {
  @override
  final binds = [
    Bind.lazySingleton((i) => AuthServiceImpl(auth: i())),
    Bind.factory((i) => LoginCubit(authService: i())),
    Bind.factory((i) => SplashController(i())),
  ];

  @override
  final routes = [
    ChildRoute('/', child: (_, args) => SplashPage()),
    ChildRoute('/login', child: (_, args) => LoginPage()),
  ];
}
