import '../../../../../../../shared/helpers/store.dart';
import '../../../../domain/entities/credential.dart';
import '../../../../domain/services/auth_service.dart';

class LoginStore extends Store<Credential> {
  LoginStore(this._authService) : super(Credential());

  final AuthService _authService;

  void setEmail(String email) {
    updateState(state.copyWith(email: email));
  }

  void setPassword(String password) {
    updateState(state.copyWith(password: password));
  }

  Future<void> login() async {
    setLoading(true);
    final result = await _authService.login(state).run();
    result.fold(setError, (_) => {});
    setLoading(false);
  }
}
