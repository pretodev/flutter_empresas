import 'package:freezed_annotation/freezed_annotation.dart';

part 'credential.freezed.dart';

@freezed
class Credential with _$Credential {
  const Credential._();

  const factory Credential({
    @Default('') String email,
    @Default('') String password,
  }) = _Credential;
}
