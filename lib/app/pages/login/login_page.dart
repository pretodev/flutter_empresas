import 'package:empresas_flutter/app/bloc/app_bloc.dart';
import 'package:empresas_flutter/app/pages/login/components/login_form.dart';
import 'package:empresas_flutter/app/pages/login/components/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/page_loading.dart';
import 'cubit/login_cubit.dart';

class LoginPage extends StatefulWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginPage());
  }

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool formFocus = false;

  void setFormFocus(bool focus) => setState(() => formFocus = focus);

  @override
  void dispose() {
    context.read<LoginCubit>().close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final top = formFocus ? -100.0 : 0.0;
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess)
          context.read<AppBloc>().add(AppEvent.checkLogin());
      },
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              Transform.translate(
                offset: Offset(0, top),
                child: Column(
                  children: [
                    TopBar(onlyLogo: formFocus),
                    Expanded(
                      child: LoginForm(
                        onFormFocusChanged: setFormFocus,
                        onSubmit: context.read<LoginCubit>().login,
                      ),
                    )
                  ],
                ),
              ),
              if (state is LoginLoading) LoginLoadingView(),
            ],
          ),
        );
      },
    );
  }
}
