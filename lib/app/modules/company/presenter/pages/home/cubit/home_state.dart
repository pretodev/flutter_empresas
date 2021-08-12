part of 'home_cubit.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.noQuery() = _NoQuery;

  const factory HomeState.empty() = _Empty;

  const factory HomeState.loading() = _Loading;

  const factory HomeState.loaded({
    @Default(const []) List<Company> companies,
  }) = _Loaded;

  const factory HomeState.error({
    required Exception error,
  }) = _Error;
}
