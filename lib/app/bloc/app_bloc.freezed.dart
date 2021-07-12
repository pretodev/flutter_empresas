// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppEventTearOff {
  const _$AppEventTearOff();

  AppCheckLogin checkLogin() {
    return const AppCheckLogin();
  }

  AppLogout logout() {
    return const AppLogout();
  }
}

/// @nodoc
const $AppEvent = _$AppEventTearOff();

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLogin,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLogin,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppCheckLogin value) checkLogin,
    required TResult Function(AppLogout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppCheckLogin value)? checkLogin,
    TResult Function(AppLogout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class $AppCheckLoginCopyWith<$Res> {
  factory $AppCheckLoginCopyWith(
          AppCheckLogin value, $Res Function(AppCheckLogin) then) =
      _$AppCheckLoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppCheckLoginCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements $AppCheckLoginCopyWith<$Res> {
  _$AppCheckLoginCopyWithImpl(
      AppCheckLogin _value, $Res Function(AppCheckLogin) _then)
      : super(_value, (v) => _then(v as AppCheckLogin));

  @override
  AppCheckLogin get _value => super._value as AppCheckLogin;
}

/// @nodoc

class _$AppCheckLogin implements AppCheckLogin {
  const _$AppCheckLogin();

  @override
  String toString() {
    return 'AppEvent.checkLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppCheckLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLogin,
    required TResult Function() logout,
  }) {
    return checkLogin();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLogin,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (checkLogin != null) {
      return checkLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppCheckLogin value) checkLogin,
    required TResult Function(AppLogout value) logout,
  }) {
    return checkLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppCheckLogin value)? checkLogin,
    TResult Function(AppLogout value)? logout,
    required TResult orElse(),
  }) {
    if (checkLogin != null) {
      return checkLogin(this);
    }
    return orElse();
  }
}

abstract class AppCheckLogin implements AppEvent {
  const factory AppCheckLogin() = _$AppCheckLogin;
}

/// @nodoc
abstract class $AppLogoutCopyWith<$Res> {
  factory $AppLogoutCopyWith(AppLogout value, $Res Function(AppLogout) then) =
      _$AppLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppLogoutCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements $AppLogoutCopyWith<$Res> {
  _$AppLogoutCopyWithImpl(AppLogout _value, $Res Function(AppLogout) _then)
      : super(_value, (v) => _then(v as AppLogout));

  @override
  AppLogout get _value => super._value as AppLogout;
}

/// @nodoc

class _$AppLogout implements AppLogout {
  const _$AppLogout();

  @override
  String toString() {
    return 'AppEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLogin,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLogin,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppCheckLogin value) checkLogin,
    required TResult Function(AppLogout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppCheckLogin value)? checkLogin,
    TResult Function(AppLogout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AppLogout implements AppEvent {
  const factory AppLogout() = _$AppLogout;
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  AppStateNone none() {
    return const AppStateNone();
  }

  AppAuthenticated authenticated() {
    return const AppAuthenticated();
  }

  AppUnauthenticated unauthenticated() {
    return const AppUnauthenticated();
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateNone value) none,
    required TResult Function(AppAuthenticated value) authenticated,
    required TResult Function(AppUnauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateNone value)? none,
    TResult Function(AppAuthenticated value)? authenticated,
    TResult Function(AppUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

/// @nodoc
abstract class $AppStateNoneCopyWith<$Res> {
  factory $AppStateNoneCopyWith(
          AppStateNone value, $Res Function(AppStateNone) then) =
      _$AppStateNoneCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateNoneCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppStateNoneCopyWith<$Res> {
  _$AppStateNoneCopyWithImpl(
      AppStateNone _value, $Res Function(AppStateNone) _then)
      : super(_value, (v) => _then(v as AppStateNone));

  @override
  AppStateNone get _value => super._value as AppStateNone;
}

/// @nodoc

class _$AppStateNone implements AppStateNone {
  const _$AppStateNone();

  @override
  String toString() {
    return 'AppState.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppStateNone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateNone value) none,
    required TResult Function(AppAuthenticated value) authenticated,
    required TResult Function(AppUnauthenticated value) unauthenticated,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateNone value)? none,
    TResult Function(AppAuthenticated value)? authenticated,
    TResult Function(AppUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class AppStateNone implements AppState {
  const factory AppStateNone() = _$AppStateNone;
}

/// @nodoc
abstract class $AppAuthenticatedCopyWith<$Res> {
  factory $AppAuthenticatedCopyWith(
          AppAuthenticated value, $Res Function(AppAuthenticated) then) =
      _$AppAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppAuthenticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppAuthenticatedCopyWith<$Res> {
  _$AppAuthenticatedCopyWithImpl(
      AppAuthenticated _value, $Res Function(AppAuthenticated) _then)
      : super(_value, (v) => _then(v as AppAuthenticated));

  @override
  AppAuthenticated get _value => super._value as AppAuthenticated;
}

/// @nodoc

class _$AppAuthenticated implements AppAuthenticated {
  const _$AppAuthenticated();

  @override
  String toString() {
    return 'AppState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateNone value) none,
    required TResult Function(AppAuthenticated value) authenticated,
    required TResult Function(AppUnauthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateNone value)? none,
    TResult Function(AppAuthenticated value)? authenticated,
    TResult Function(AppUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AppAuthenticated implements AppState {
  const factory AppAuthenticated() = _$AppAuthenticated;
}

/// @nodoc
abstract class $AppUnauthenticatedCopyWith<$Res> {
  factory $AppUnauthenticatedCopyWith(
          AppUnauthenticated value, $Res Function(AppUnauthenticated) then) =
      _$AppUnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppUnauthenticatedCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements $AppUnauthenticatedCopyWith<$Res> {
  _$AppUnauthenticatedCopyWithImpl(
      AppUnauthenticated _value, $Res Function(AppUnauthenticated) _then)
      : super(_value, (v) => _then(v as AppUnauthenticated));

  @override
  AppUnauthenticated get _value => super._value as AppUnauthenticated;
}

/// @nodoc

class _$AppUnauthenticated implements AppUnauthenticated {
  const _$AppUnauthenticated();

  @override
  String toString() {
    return 'AppState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateNone value) none,
    required TResult Function(AppAuthenticated value) authenticated,
    required TResult Function(AppUnauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateNone value)? none,
    TResult Function(AppAuthenticated value)? authenticated,
    TResult Function(AppUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class AppUnauthenticated implements AppState {
  const factory AppUnauthenticated() = _$AppUnauthenticated;
}
