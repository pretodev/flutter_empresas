// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DetailsStateTearOff {
  const _$DetailsStateTearOff();

  DetailsLoading loading() {
    return const DetailsLoading();
  }

  DetailsLoaded loaded(Company company) {
    return DetailsLoaded(
      company,
    );
  }

  DetailsError error(Exception error) {
    return DetailsError(
      error,
    );
  }
}

/// @nodoc
const $DetailsState = _$DetailsStateTearOff();

/// @nodoc
mixin _$DetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Company company) loaded,
    required TResult Function(Exception error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Company company)? loaded,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailsLoading value) loading,
    required TResult Function(DetailsLoaded value) loaded,
    required TResult Function(DetailsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsLoading value)? loading,
    TResult Function(DetailsLoaded value)? loaded,
    TResult Function(DetailsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res> implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  final DetailsState _value;
  // ignore: unused_field
  final $Res Function(DetailsState) _then;
}

/// @nodoc
abstract class $DetailsLoadingCopyWith<$Res> {
  factory $DetailsLoadingCopyWith(
          DetailsLoading value, $Res Function(DetailsLoading) then) =
      _$DetailsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsLoadingCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res>
    implements $DetailsLoadingCopyWith<$Res> {
  _$DetailsLoadingCopyWithImpl(
      DetailsLoading _value, $Res Function(DetailsLoading) _then)
      : super(_value, (v) => _then(v as DetailsLoading));

  @override
  DetailsLoading get _value => super._value as DetailsLoading;
}

/// @nodoc

class _$DetailsLoading implements DetailsLoading {
  const _$DetailsLoading();

  @override
  String toString() {
    return 'DetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DetailsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Company company) loaded,
    required TResult Function(Exception error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Company company)? loaded,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailsLoading value) loading,
    required TResult Function(DetailsLoaded value) loaded,
    required TResult Function(DetailsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsLoading value)? loading,
    TResult Function(DetailsLoaded value)? loaded,
    TResult Function(DetailsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DetailsLoading implements DetailsState {
  const factory DetailsLoading() = _$DetailsLoading;
}

/// @nodoc
abstract class $DetailsLoadedCopyWith<$Res> {
  factory $DetailsLoadedCopyWith(
          DetailsLoaded value, $Res Function(DetailsLoaded) then) =
      _$DetailsLoadedCopyWithImpl<$Res>;
  $Res call({Company company});

  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class _$DetailsLoadedCopyWithImpl<$Res> extends _$DetailsStateCopyWithImpl<$Res>
    implements $DetailsLoadedCopyWith<$Res> {
  _$DetailsLoadedCopyWithImpl(
      DetailsLoaded _value, $Res Function(DetailsLoaded) _then)
      : super(_value, (v) => _then(v as DetailsLoaded));

  @override
  DetailsLoaded get _value => super._value as DetailsLoaded;

  @override
  $Res call({
    Object? company = freezed,
  }) {
    return _then(DetailsLoaded(
      company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
    ));
  }

  @override
  $CompanyCopyWith<$Res> get company {
    return $CompanyCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value));
    });
  }
}

/// @nodoc

class _$DetailsLoaded implements DetailsLoaded {
  const _$DetailsLoaded(this.company);

  @override
  final Company company;

  @override
  String toString() {
    return 'DetailsState.loaded(company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsLoaded &&
            (identical(other.company, company) ||
                const DeepCollectionEquality().equals(other.company, company)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(company);

  @JsonKey(ignore: true)
  @override
  $DetailsLoadedCopyWith<DetailsLoaded> get copyWith =>
      _$DetailsLoadedCopyWithImpl<DetailsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Company company) loaded,
    required TResult Function(Exception error) error,
  }) {
    return loaded(company);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Company company)? loaded,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(company);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailsLoading value) loading,
    required TResult Function(DetailsLoaded value) loaded,
    required TResult Function(DetailsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsLoading value)? loading,
    TResult Function(DetailsLoaded value)? loaded,
    TResult Function(DetailsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class DetailsLoaded implements DetailsState {
  const factory DetailsLoaded(Company company) = _$DetailsLoaded;

  Company get company => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsLoadedCopyWith<DetailsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsErrorCopyWith<$Res> {
  factory $DetailsErrorCopyWith(
          DetailsError value, $Res Function(DetailsError) then) =
      _$DetailsErrorCopyWithImpl<$Res>;
  $Res call({Exception error});
}

/// @nodoc
class _$DetailsErrorCopyWithImpl<$Res> extends _$DetailsStateCopyWithImpl<$Res>
    implements $DetailsErrorCopyWith<$Res> {
  _$DetailsErrorCopyWithImpl(
      DetailsError _value, $Res Function(DetailsError) _then)
      : super(_value, (v) => _then(v as DetailsError));

  @override
  DetailsError get _value => super._value as DetailsError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(DetailsError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$DetailsError implements DetailsError {
  const _$DetailsError(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'DetailsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $DetailsErrorCopyWith<DetailsError> get copyWith =>
      _$DetailsErrorCopyWithImpl<DetailsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Company company) loaded,
    required TResult Function(Exception error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Company company)? loaded,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailsLoading value) loading,
    required TResult Function(DetailsLoaded value) loaded,
    required TResult Function(DetailsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsLoading value)? loading,
    TResult Function(DetailsLoaded value)? loaded,
    TResult Function(DetailsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DetailsError implements DetailsState {
  const factory DetailsError(Exception error) = _$DetailsError;

  Exception get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsErrorCopyWith<DetailsError> get copyWith =>
      throw _privateConstructorUsedError;
}
