import 'package:freezed_annotation/freezed_annotation.dart';

part 'credential.freezed.dart';

@freezed
class Credential with _$Credential {
  const Credential._();

  const factory Credential({
    required String email,
    required String password,
  }) = _Credential;
}
