// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'logged_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoggedUserTearOff {
  const _$LoggedUserTearOff();

  _LoggedUser call(
      {required int id, required String name, required String email}) {
    return _LoggedUser(
      id: id,
      name: name,
      email: email,
    );
  }
}

/// @nodoc
const $LoggedUser = _$LoggedUserTearOff();

/// @nodoc
mixin _$LoggedUser {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoggedUserCopyWith<LoggedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggedUserCopyWith<$Res> {
  factory $LoggedUserCopyWith(
          LoggedUser value, $Res Function(LoggedUser) then) =
      _$LoggedUserCopyWithImpl<$Res>;
  $Res call({int id, String name, String email});
}

/// @nodoc
class _$LoggedUserCopyWithImpl<$Res> implements $LoggedUserCopyWith<$Res> {
  _$LoggedUserCopyWithImpl(this._value, this._then);

  final LoggedUser _value;
  // ignore: unused_field
  final $Res Function(LoggedUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LoggedUserCopyWith<$Res> implements $LoggedUserCopyWith<$Res> {
  factory _$LoggedUserCopyWith(
          _LoggedUser value, $Res Function(_LoggedUser) then) =
      __$LoggedUserCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String email});
}

/// @nodoc
class __$LoggedUserCopyWithImpl<$Res> extends _$LoggedUserCopyWithImpl<$Res>
    implements _$LoggedUserCopyWith<$Res> {
  __$LoggedUserCopyWithImpl(
      _LoggedUser _value, $Res Function(_LoggedUser) _then)
      : super(_value, (v) => _then(v as _LoggedUser));

  @override
  _LoggedUser get _value => super._value as _LoggedUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_LoggedUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoggedUser extends _LoggedUser {
  const _$_LoggedUser(
      {required this.id, required this.name, required this.email})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'LoggedUser(id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoggedUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$LoggedUserCopyWith<_LoggedUser> get copyWith =>
      __$LoggedUserCopyWithImpl<_LoggedUser>(this, _$identity);
}

abstract class _LoggedUser extends LoggedUser {
  const factory _LoggedUser(
      {required int id,
      required String name,
      required String email}) = _$_LoggedUser;
  const _LoggedUser._() : super._();

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoggedUserCopyWith<_LoggedUser> get copyWith =>
      throw _privateConstructorUsedError;
}
