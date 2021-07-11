import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static Page page() => MaterialPage<void>(child: LoginPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(),
    );
  }
}
