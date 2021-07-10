import 'package:empresas_flutter/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Empresas',
      home: SplashPage(),
    );
  }
}
