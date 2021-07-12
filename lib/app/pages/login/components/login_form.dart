import 'package:empresas_flutter/app/pages/login/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:string_validator/string_validator.dart';

import 'error_view.dart';
import 'field.dart';
import 'page_loading.dart';
import 'password_form_field.dart';

class LoginForm extends StatelessWidget {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginCubit>();
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Stack(
          children: [
            Form(
              key: _key,
              child: Column(
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
    );
  }
}
