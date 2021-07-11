import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:empresas_flutter/app/data/services/interfaces/auth_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required AuthService authService,
  })  : _authService = authService,
        super(AppState.none()) {
    add(AppEvent.checkLogin());
  }

  final AuthService _authService;

  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    if (event is AppCheckLogin) {
      yield* _mapCheckloginToState();
    }
  }

  Stream<AppState> _mapCheckloginToState() async* {
    final result = await _authService.isAuthenticated().run();
    yield result ? AppState.authenticated() : AppState.unauthenticated();
  }
}
