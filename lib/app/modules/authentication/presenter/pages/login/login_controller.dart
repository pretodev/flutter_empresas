import 'package:flutter/cupertino.dart';

import '../../../../../../shared/components/ioasys_overlay_loading.dart';
import '../../../../../../shared/helpers/overlay_manager.dart';
import 'stores/login_store.dart';

class LoginController {
  const LoginController(this.store);

  final LoginStore store;

  void setEmail(String email) => store.setEmail(email);

  void setPassword(String password) => store.setPassword(password);

  void login() async {
    OverlayEntry loading = OverlayEntry(builder: (_) => IoasysOverlayLoading());
    OverlayManager.add(loading);
    store.when(onError: (_) => loading.remove());
    await store.login();
  }

  String get errorMessage {
    if (store.error != null) {
      return store.error.toString();
    }
    return '';
  }
}
