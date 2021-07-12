part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.checkLogin() = AppCheckLogin;

  const factory AppEvent.logout() = AppLogout;
}
