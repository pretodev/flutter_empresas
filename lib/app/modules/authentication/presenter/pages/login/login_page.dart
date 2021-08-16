import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'components/login_form.dart';
import 'components/top_bar.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  bool formFocus = false;
  void setFormFocus(bool focus) => setState(() => formFocus = focus);

  @override
  Widget build(BuildContext context) {
    final top = formFocus ? -100.0 : 0.0;
    return Scaffold(
      body: Transform.translate(
        offset: Offset(0, top),
        child: Column(
          children: [
            TopBar(onlyLogo: formFocus),
            Expanded(
              child: Obx(
                () => LoginForm(
                  emailChanged: controller.setEmail,
                  passwordChanged: controller.setPassword,
                  errorMessage: controller.errorMessage,
                  onFormFocusChanged: setFormFocus,
                  onSubmit: controller.login,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
