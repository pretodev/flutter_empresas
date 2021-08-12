import '../../../../domain/entities/credential.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

import 'error_view.dart';
import 'field.dart';
import 'password_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
    required this.onFormFocusChanged,
    this.errorMessage = '',
    required this.onSubmit,
  }) : super(key: key);

  final void Function(bool) onFormFocusChanged;

  final String errorMessage;

  final void Function(Credential credential) onSubmit;

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _key = GlobalKey<FormState>();

  final emailFocus = FocusNode();
  final passwordFocus = FocusNode();

  String _email = '';
  void setEmail(String email) => setState(() => _email = email);

  String _password = '';
  void setPassword(String password) => setState(() => _password = password);

  void submit() {
    if (!_key.currentState!.validate()) return;
    widget.onSubmit(Credential(email: _email, password: _password));
  }

  void formFocus() {
    widget.onFormFocusChanged(emailFocus.hasFocus || passwordFocus.hasFocus);
  }

  @override
  void initState() {
    super.initState();
    emailFocus.addListener(formFocus);
    passwordFocus.addListener(formFocus);
  }

  @override
  void dispose() {
    emailFocus.dispose();
    passwordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: ListView(
        children: [
          Field(
            labelText: 'Email',
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              validator: (value) =>
                  value!.isEmpty || !isEmail(value) ? '' : null,
              onChanged: setEmail,
              focusNode: emailFocus,
            ),
          ),
          Field(
            labelText: 'Senha',
            child: PasswordFormField(
              validator: (value) => value!.isEmpty ? '' : null,
              onChanged: setPassword,
              focusNode: passwordFocus,
            ),
          ),
          ErrorView(message: widget.errorMessage),
          Padding(
            padding: const EdgeInsets.all(24),
            child: ElevatedButton(
              child: Text('Entrar'),
              onPressed: submit,
            ),
          ),
        ],
      ),
    );
  }
}
