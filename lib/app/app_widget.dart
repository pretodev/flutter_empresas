import 'package:empresas_flutter/app/bloc/app_bloc.dart';
import 'package:empresas_flutter/app/data/services/interfaces/auth_service.dart';
import 'package:empresas_flutter/app/routes/routes.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'theme/ioasys_theme.dart';

class AppWidget extends StatelessWidget {
  final AuthService _authService;

  const AppWidget({Key? key, required AuthService authService})
      : _authService = authService,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _authService),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => AppBloc(authService: _authService))
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
