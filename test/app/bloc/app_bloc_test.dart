import 'package:bloc_test/bloc_test.dart';
import 'package:empresas_flutter/app/bloc/app_bloc.dart';
import 'package:empresas_flutter/app/data/models/logged_user.dart';
import 'package:empresas_flutter/app/data/services/interfaces/auth_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthService {}

class MockLoggedUser extends Mock implements LoggedUser {}

void main() {
  group('App Bloc', () {
    final user = MockLoggedUser();
    late AuthService authRepo;

    setUp(() {
      authRepo = MockAuthRepository();
      when(() => authRepo.isAuthenticated()).thenReturn(Task.of(false));
    });

    test('estado inicial deve ser none', () {
      expect(
        AppBloc(authService: authRepo).state,
        AppState.none(),
      );
    });

    group('CheckLogin', () {
      blocTest<AppBloc, AppState>(
        'emitir authenticated quando estiver autenticado',
        build: () {
          when(() => authRepo.isAuthenticated()).thenReturn(Task.of(true));
          return AppBloc(authService: authRepo);
        },
        seed: () => AppState.none(),
        expect: () => [AppState.authenticated()],
      );

      blocTest<AppBloc, AppState>(
        'emitir unauthenticated quando nao estiver autenticado',
        build: () {
          when(() => authRepo.isAuthenticated()).thenReturn(Task.of(false));
          return AppBloc(authService: authRepo);
        },
        expect: () => [AppState.unauthenticated()],
      );
    });
  });
}
