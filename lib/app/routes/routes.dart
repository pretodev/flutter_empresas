import 'package:empresas_flutter/app/bloc/app_bloc.dart';
import 'package:empresas_flutter/app/pages/home/home_page.dart';
import 'package:empresas_flutter/app/pages/login/login_page.dart';
import 'package:empresas_flutter/app/pages/splash/splash_page.dart';
import 'package:flutter/cupertino.dart';

List<Page> onGenerateAppViewPages(AppState state, List<Page<dynamic>> pages) {
  if (state is AppAuthenticated) {
    return [HomePage.page()];
  } else if (state is AppUnauthenticated) {
    return [LoginPage.page()];
  }
  return [SplashPage.page()];
}
