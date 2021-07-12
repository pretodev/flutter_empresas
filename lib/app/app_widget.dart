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
  const AppWidget({
    Key? key,
    required AuthService authService,
    required CompanyRepository companyRepository,
  })  : _authService = authService,
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

class _AppWidget extends StatefulWidget {
  @override
  __AppWidgetState createState() => __AppWidgetState();
}

class __AppWidgetState extends State<_AppWidget> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Empresas Flutter',
      theme: IoasysTheme.primary(context),
      navigatorKey: _navigatorKey,
      builder: (context, child) {
        return BlocListener<AppBloc, AppState>(
          listener: (_, state) {
            if (state is AppUnauthenticated) {
              _navigator.pushAndRemoveUntil<void>(
                LoginPage.route(),
                (route) => false,
              );
            } else if (state is AppAuthenticated) {
              _navigator.pushAndRemoveUntil<void>(
                HomePage.route(),
                (route) => false,
              );
            }
          },
          child: child,
        );
      },
      onGenerateRoute: (_) => SplashPage.route(),
    );
  }
}
