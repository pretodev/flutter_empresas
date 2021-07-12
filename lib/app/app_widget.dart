import 'package:empresas_flutter/app/bloc/app_bloc.dart';
import 'package:empresas_flutter/app/data/repositories/interfaces/company_repository.dart';
import 'package:empresas_flutter/app/data/services/interfaces/auth_service.dart';
import 'package:empresas_flutter/app/pages/details/cubit/details_cubit.dart';
import 'package:empresas_flutter/app/pages/home/cubit/home_cubit.dart';
import 'package:empresas_flutter/app/pages/home/home_page.dart';
import 'package:empresas_flutter/app/pages/login/login_page.dart';
import 'package:empresas_flutter/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/login/cubit/login_cubit.dart';
import 'theme/ioasys_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget(
      {Key? key,
      required AuthService authService,
      required CompanyRepository companyRepository})
      : _authService = authService,
        _companyRepository = companyRepository,
        super(key: key);

  final AuthService _authService;
  final CompanyRepository _companyRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _authService),
        RepositoryProvider.value(value: _companyRepository),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) =>
                AppBloc(authService: _authService)..add(AppEvent.checkLogin()),
          ),
          BlocProvider(
            create: (_) => HomeCubit(companyRepository: _companyRepository),
          ),
          BlocProvider(
            create: (_) => LoginCubit(authService: _authService),
          ),
          BlocProvider(
            create: (_) => DetailsCubit(companyRepository: _companyRepository),
          ),
        ],
        child: _AppWidget(),
      ),
    );
  }
}

class _AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Empresas',
      theme: IoasysTheme.primary(context),
      home: BlocListener<AppBloc, AppState>(
        listener: (context, state) {
          if (state == AppState.authenticated()) {
            Navigator.pushAndRemoveUntil(
                context, HomePage.route(), (_) => false);
          } else if (state == AppState.unauthenticated()) {
            Navigator.pushAndRemoveUntil(
                context, LoginPage.route(), (_) => false);
          }
        },
        child: SplashPage(),
      ),
    );
  }
}
