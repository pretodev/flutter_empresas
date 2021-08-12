import 'dart:async';

class Delayed {
  Timer? _debounce;

  void call(
    void Function() func, {
    Duration delay = const Duration(milliseconds: 50),
  }) async {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(delay, () {
      func();
      _debounce?.cancel();
    });
  }

  dispose() {
    _debounce?.cancel();
  }
}
