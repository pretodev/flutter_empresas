import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  static Page page() => MaterialPage<void>(child: SplashPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image(
            image: AssetImage('assets/images/logo_home.png'),
            height: 45.0,
            width: 185.0,
          ),
        ),
      ),
    );
  }
}
