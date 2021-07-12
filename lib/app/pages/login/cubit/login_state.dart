part of 'login_cubit.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.none() = LoginNone;

  const factory LoginState.loading() = LoginLoading;

  const factory LoginState.success() = LoginSuccess;

  const factory LoginState.error(Exception error) = LoginError;
}
