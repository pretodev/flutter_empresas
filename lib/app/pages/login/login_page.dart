import 'package:empresas_flutter/app/bloc/app_bloc.dart';
import 'package:empresas_flutter/app/pages/login/components/login_form.dart';
import 'package:empresas_flutter/app/pages/login/components/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/login_cubit.dart';

class LoginPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status == LoginStatus.authenticated)
          context.read<AppBloc>().add(AppEvent.checkLogin());
      },
      child: Scaffold(
        body: Column(
          children: [
            TopBar(),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
