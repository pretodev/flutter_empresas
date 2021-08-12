import 'package:flutter_modular/flutter_modular.dart';

import '../../../domain/services/auth_service.dart';

class SplashController {
  final AuthService _authService;

  SplashController(this._authService);

  void checkAuth() async {
    final result = await _authService.currentUser().run();
    final path = result.fold((_) => '/login', (_) => '/companies');
    Future.delayed(Duration(seconds: 1)).then(
      (value) => Modular.to.navigate(path),
    );
  }
}
