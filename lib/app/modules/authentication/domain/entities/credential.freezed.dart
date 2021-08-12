// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'credential.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CredentialTearOff {
  const _$CredentialTearOff();

  _Credential call({required String email, required String password}) {
    return _Credential(
      email: email,
      password: password,
    );
  }
}

/// @nodoc
const $Credential = _$CredentialTearOff();

/// @nodoc
mixin _$Credential {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CredentialCopyWith<Credential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialCopyWith<$Res> {
  factory $CredentialCopyWith(
          Credential value, $Res Function(Credential) then) =
      _$CredentialCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$CredentialCopyWithImpl<$Res> implements $CredentialCopyWith<$Res> {
  _$CredentialCopyWithImpl(this._value, this._then);

  final Credential _value;
  // ignore: unused_field
  final $Res Function(Credential) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CredentialCopyWith<$Res> implements $CredentialCopyWith<$Res> {
  factory _$CredentialCopyWith(
          _Credential value, $Res Function(_Credential) then) =
      __$CredentialCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$CredentialCopyWithImpl<$Res> extends _$CredentialCopyWithImpl<$Res>
    implements _$CredentialCopyWith<$Res> {
  __$CredentialCopyWithImpl(
      _Credential _value, $Res Function(_Credential) _then)
      : super(_value, (v) => _then(v as _Credential));

  @override
  _Credential get _value => super._value as _Credential;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_Credential(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Credential extends _Credential {
  const _$_Credential({required this.email, required this.password})
      : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'Credential(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Credential &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$CredentialCopyWith<_Credential> get copyWith =>
      __$CredentialCopyWithImpl<_Credential>(this, _$identity);
}

abstract class _Credential extends Credential {
  const factory _Credential({required String email, required String password}) =
      _$_Credential;
  const _Credential._() : super._();

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CredentialCopyWith<_Credential> get copyWith =>
      throw _privateConstructorUsedError;
}
