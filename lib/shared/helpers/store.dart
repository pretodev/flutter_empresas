import 'package:get/get.dart';

import 'errors.dart';

typedef void OnState<T>(T state);
typedef void OnLoading();
typedef void OnError(Exception error);

class Store<T> extends GetxController {
  Store(T initialState) : _state = Rx<T>(initialState);

  final _loading = Rx(false);
  final _error = Rx<Failure?>(null);
  final Rx<T> _state;

  OnError? _onError;
  OnLoading? _onLoading;
  OnState<T>? _onState;

  T get state => _state.value;

  void updateState(T state) {
    _state.value = state;
    if (_onState != null) _onState!(state);
  }

  bool get isLoading => _loading.value;

  void setLoading(bool loading) {
    _loading.value = loading;
    if (_onLoading != null) _onLoading!();
  }

  bool get hasError => _error.value != null;

  Exception? get error => _error.value;

  void setError(Failure? error) {
    _error.value = error;
    if (_onError != null) _onError!(error!);
  }

  void when({
    OnState<T>? onState,
    OnLoading? onLoading,
    OnError? onError,
  }) {
    _onError = onError;
    _onLoading = onLoading;
    _onState = onState;
  }
}
