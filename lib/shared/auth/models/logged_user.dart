import 'dart:convert';

class LoggedUser {
  final int id;
  final String name;
  final String email;

  const LoggedUser({
    required this.id,
    required this.name,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }

  factory LoggedUser.fromMap(Map<String, dynamic> map) {
    return LoggedUser(
      id: map['id'],
      name: map['name'],
      email: map['email'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoggedUser.fromJson(String source) =>
      LoggedUser.fromMap(json.decode(source));
}
