import 'package:empresas_flutter/app/bloc/app_bloc.dart';
import 'package:empresas_flutter/app/data/repositories/interfaces/company_repository.dart';
import 'package:empresas_flutter/app/data/services/interfaces/auth_service.dart';
import 'package:empresas_flutter/app/pages/home/cubit/home_cubit.dart';
import 'package:empresas_flutter/app/routes/routes.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          BlocProvider(create: (_) => AppBloc(authService: _authService)),
          BlocProvider(
              create: (_) => HomeCubit(companyRepository: _companyRepository)),
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
      home: FlowBuilder<AppState>(
        state: context.select((AppBloc bloc) => bloc.state),
        onGeneratePages: onGenerateAppViewPages,
      ),
    );
  }
}
