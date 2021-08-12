import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../../shared/helpers/overlay_loading.dart';
import 'components/login_form.dart';
import 'components/top_bar.dart';
import 'cubit/login_cubit.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginCubit> {
  bool formFocus = false;

  void setFormFocus(bool focus) => setState(() => formFocus = focus);

  @override
  Widget build(BuildContext context) {
    final top = formFocus ? -100.0 : 0.0;
    return BlocConsumer<LoginCubit, LoginState>(
      bloc: controller,
      listener: (context, state) {
        state.maybeWhen(loading: () {
          OverlayLoading.show(context);
        }, success: () {
          Modular.to.navigate('/companies');
        }, orElse: () {
          OverlayLoading.hide();
        });
      },
      builder: (context, state) {
        return Scaffold(
          body: Transform.translate(
            offset: Offset(0, top),
            child: Column(
              children: [
                TopBar(onlyLogo: formFocus),
                Expanded(
                  child: LoginForm(
                    onFormFocusChanged: setFormFocus,
                    onSubmit: controller.login,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
