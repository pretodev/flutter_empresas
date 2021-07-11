part of 'home_cubit.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.empty() = HomeStateEmpty;

  const factory HomeState.loading() = HomeStateLoading;

  const factory HomeState.loaded({
    @Default(const []) List<Company> companies,
  }) = HomeStateLoaded;

  const factory HomeState.error({
    required Exception error,
  }) = HomeStateError;
}
