part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.none() = AppStateNone;

  const factory AppState.authenticated() = AppAuthenticated;

  const factory AppState.unauthenticated() = AppUnauthenticated;
}
