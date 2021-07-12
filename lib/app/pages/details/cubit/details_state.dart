part of 'details_cubit.dart';

@freezed
abstract class DetailsState with _$DetailsState {
  const factory DetailsState.loading() = DetailsLoading;

  const factory DetailsState.loaded(Company company) = DetailsLoaded;

  const factory DetailsState.error(Exception error) = DetailsError;
}
