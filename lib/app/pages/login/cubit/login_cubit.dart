import 'package:bloc/bloc.dart';
import 'package:empresas_flutter/app/data/models/credential.dart';
import 'package:empresas_flutter/app/data/services/interfaces/auth_service.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required AuthService authService})
      : _authService = authService,
        super(LoginState.none());

  final AuthService _authService;

  void login(Credential credential) async {
    emit(LoginState.loading());
    final result = await _authService.login(credential).run();
    final newState = result.fold(
      (error) => LoginState.error(error),
      (_) => LoginState.success(),
    );
    emit(newState);
  }
}
