part of 'login_cubit.dart';

enum LoginStatus {
  none,
  authenticating,
  authenticated,
  fail,
}

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String email,
    @Default('') String password,
    @Default(LoginStatus.none) LoginStatus status,
    Exception? error,
  }) = _LoginState;
}
