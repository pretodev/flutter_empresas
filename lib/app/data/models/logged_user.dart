import 'package:freezed_annotation/freezed_annotation.dart';

part 'logged_user.freezed.dart';

@freezed
class LoggedUser with _$LoggedUser {
  const LoggedUser._();

  const factory LoggedUser({
    required int id,
    required String name,
    required String email,
  }) = _LoggedUser;
}
