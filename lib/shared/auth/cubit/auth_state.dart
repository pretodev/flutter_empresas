part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.none() = _None;

  const factory AuthState.authenticated(LoggedUser user) = _Authenticated;

  const factory AuthState.unauthenticated() = _Unauthenticated;
}
