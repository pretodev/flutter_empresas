import 'package:empresas_flutter/app/bloc/app_bloc.dart';
import 'package:empresas_flutter/app/pages/login/components/error_view.dart';
import 'package:empresas_flutter/app/pages/login/components/field.dart';
import 'package:empresas_flutter/app/pages/login/components/page_loading.dart';
import 'package:empresas_flutter/app/pages/login/components/password_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:string_validator/string_validator.dart';

import 'cubit/login_cubit.dart';

class LoginPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginPage());
  }

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status == LoginStatus.authenticated)
          context.read<AppBloc>().add(AppEvent.checkLogin());
      },
      child: Scaffold(
        body: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            final bloc = context.read<LoginCubit>();
            return Stack(
              children: [
                Form(
                  key: _key,
                  child: ListView(
                    children: [
                      Field(
                        labelText: 'Email',
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) =>
                              value!.isEmpty || !isEmail(value) ? '' : null,
                          onChanged: bloc.setEmail,
                        ),
                      ),
                      Field(
                        labelText: 'Senha',
                        child: PasswordFormField(
                          validator: (value) => value!.isEmpty ? '' : null,
                          onChanged: bloc.setPassword,
                        ),
                      ),
                      if (state.status == LoginStatus.fail)
                        ErrorView(message: state.error.toString()),
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: ElevatedButton(
                          child: Text('Entrar'),
                          onPressed: () {
                            if (!_key.currentState!.validate()) return;
                            bloc.login();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                if (state.status == LoginStatus.authenticating) PageLoading(),
              ],
            );
          },
        ),
      ),
    );
  }
}
