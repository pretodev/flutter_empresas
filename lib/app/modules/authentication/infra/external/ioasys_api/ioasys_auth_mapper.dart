import 'package:empresas_flutter/app/modules/authentication/domain/entities/user.dart';

class IoasysAuthMapper {
  static User fromOAuth(Map<String, dynamic> data) {
    return User(
      id: data['id'],
      email: data['email'],
      name: data['name'],
    );
  }
}
