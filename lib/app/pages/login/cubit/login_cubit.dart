import 'package:bloc/bloc.dart';
import 'package:empresas_flutter/app/data/models/credential.dart';
import 'package:empresas_flutter/app/data/services/interfaces/auth_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required AuthService authService})
      : _authService = authService,
        super(LoginState());

  final AuthService _authService;

  void setEmail(String email) {
    emit(state.copyWith(email: email));
  }

  void setPassword(String password) {
    emit(state.copyWith(password: password));
  }

  void login() async {
    emit(state.copyWith(status: LoginStatus.authenticating));
    final credential = Credential(email: state.email, password: state.password);
    final result = await _authService.login(credential).run();
    final newState = result.fold(
      (error) {
        print(error);
        return state.copyWith(status: LoginStatus.fail, error: error);
      },
      (_) {
        print(_);
        return state.copyWith(status: LoginStatus.authenticated);
      },
    );
    emit(newState);
  }
}
